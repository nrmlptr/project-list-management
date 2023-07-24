import Project from "../models/Mproject.js";
import Users from "../models/Musers.js";
import {Op} from "sequelize";

export const getProject = async(req, res) =>{
    try {
        let response;
        if(req.role === "admin"){
            response = await Project.findAll({
                attributes:['uuid','name_project','description','pic','start_date','end_date','priority','status','task_complexity'],
                include:[{
                    model: Users,
                    attributes:['name','email']
                }]
            });
        }else{
            response = await Project.findAll({
                attributes:['uuid','name_project','description','pic','start_date','end_date','priority','status','task_complexity'],
                where:{
                    userId: req.userId
                },
                include:[{
                    model: Users,
                    attributes:['name','email']
                }]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const getProjectById = async(req, res) =>{
    try {
        //cek id yg dikirim oleh user
        const project = await Project.findOne({
            where:{
                uuid: req.params.id
            }
        });
        if(!project) return res.status(404).json({msg: "Data Project Tidak Ditemukan!"});
        let response;
        if(req.role === "admin"){
            response = await Project.findOne({
                attributes:['uuid','name_project','description','pic','start_date','end_date','priority','status','task_complexity'],
                where:{
                    id: project.id
                },
                include:[{
                    model: Users,
                    attributes:['name','email']
                }]
            });
        }else{
            response = await Project.findOne({
                attributes:['uuid','name_project','description','pic','start_date','end_date','priority','status','task_complexity'],
                where:{
                    [Op.and]:[{id: project.id}, {userId: req.userId}]
                },
                include:[{
                    model: Users,
                    attributes:['name','email']
                }]
            });
        }
        res.status(200).json(response);
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const createProject = async(req, res) =>{
    const {name_project, description, pic, start_date, end_date, priority, status, task_complexity} = req.body;
    try {
        await Project.create({
            name_project: name_project,
            description: description,
            pic: pic,
            start_date: start_date,
            end_date: end_date,
            priority: priority,
            status: status,
            task_complexity: task_complexity,
            userId: req.userId
        });
        res.status(201).json({msg: "Project Created Successfuly!"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const updateProject = async(req, res) =>{
    try {
        //cek id yg dikirim oleh user
        const project = await Project.findOne({
            where:{
                uuid: req.params.id
            }
        });
        if(!project) return res.status(404).json({msg: "Data Project Tidak Ditemukan!"});
        const {name_project, description, pic, start_date, end_date, priority, status, task_complexity} = req.body;
        if(req.role === "admin"){
            await Project.update({name_project, description, pic, start_date, end_date, priority, status, task_complexity},{
                where:{
                    id: project.id
                }
            });
        }else{
            if(req.userId !== project.userId) return res.status(403).json({msg: "Akses Terlarang!"});
            await Project.update({name_project, description, pic, start_date, end_date, priority, status, task_complexity},{
                where:{
                    [Op.and]:[{id: project.id}, {userId: req.userId}]
                }
            });
        }
        res.status(200).json({msg: "Project Updated Successfully!"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}

export const deleteProject = async(req, res) =>{
    try {
        //cek id yg dikirim oleh user
        const project = await Project.findOne({
            where:{
                uuid: req.params.id
            }
        });
        if(!project) return res.status(404).json({msg: "Data Project Tidak Ditemukan!"});
        const {name_project, description, pic, start_date, end_date, priority, status, task_complexity} = req.body;
        if(req.role === "admin"){
            await Project.destroy({
                where:{
                    id: project.id
                }
            });
        }else{
            if(req.userId !== project.userId) return res.status(403).json({msg: "Akses Terlarang!"});
            await Project.destroy({
                where:{
                    [Op.and]:[{id: project.id}, {userId: req.userId}]
                }
            });
        }
        res.status(200).json({msg: "Project Deleted Successfully!"});
    } catch (error) {
        res.status(500).json({msg: error.message});
    }
}