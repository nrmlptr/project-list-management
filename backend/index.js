import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import db from "./config/database.js";
import SequelizeStore from "connect-session-sequelize";
import RouteUser from "./routes/RouteUser.js";
import RouteProject from "./routes/RouteProject.js";
import RouteAuth from "./routes/RouteAuth.js";
dotenv.config();

import httpProxy from 'http-proxy';

const app = express();
const proxy = httpProxy.createProxyServer({ target: 'http://'+process.env.APP_HOST+':3000' });

const sessionStore = SequelizeStore(session.Store);

const store = new sessionStore({
    db: db
});

app.use(session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
        secure: 'auto'
    }
}));

const allowedOrigins = ['http://'+process.env.APP_HOST+':'+process.env.APP_PORT];

app.use(cors({
    credentials: true,
    origin: allowedOrigins
}));

app.use(express.json());
app.use(RouteUser);
app.use(RouteProject);
app.use(RouteAuth);

// Define the IP addresses allowed to access the app
const blacklistIPs = ['192.168.0.103','192.168.0.107'];

// Middleware to check the client's IP address
const restrictIP = (req, res, next) => {
    const clientIP = req.ip;
    const ipv4Address = clientIP.replace('::ffff:', ''); // Remove the IPv6 mapping prefix if present

    if (blacklistIPs.includes(ipv4Address)) {
        return res.status(403).send('Access Denied');
    } else {
        return next();
    }
};

// Use the restrictIP middleware for the React app route
app.use('/', restrictIP, (req, res) => {
    proxy.web(req, res);
});

// Error handling for the proxy server
proxy.on('error', (err, req, res) => {
    console.error('Proxy Error:', err);
    res.status(500).send('Proxy Error');
});

app.listen(process.env.APP_PORT, process.env.APP_HOST, () => {
    console.log('Server up and running...');
});