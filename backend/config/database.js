import { Sequelize } from "sequelize";

const db = new Sequelize('db_projectApp', 'root', '', {
   host: "localhost",
   dialect: "mysql" 
});

export default db;