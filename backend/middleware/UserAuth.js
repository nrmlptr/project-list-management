import Users from "../models/Musers.js";

export const verifyUser = async(req, res, next) =>{
    if(!req.session.userId){
        return res.status(401).json({msg: "Mohon Login Kembali!"});
    }
    const user = await Users.findOne({
        where: {
            uuid: req.session.userId
        }
    });
    if(!user) return res.status(404).json({msg: "User Tidak Ditemukan!"});
    req.userId  = user.id;
    req.role    = user.role;
    next();
}

// agar crud user hanya bisa dibuka oleh admin
export const adminOnly = async(req, res, next) =>{
    const user = await Users.findOne({
        where: {
            uuid: req.session.userId
        }
    });
    if(!user) return res.status(404).json({msg: "User Tidak Ditemukan!"});
    if(user.role !== "admin") return res.status(403).json({msg: "Akses Terlarang!"});
    next();
}