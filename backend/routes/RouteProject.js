import express from "express";
import {
    getProject,
    getProjectById,
    createProject,
    updateProject,
    deleteProject
} from "../controllers/Project.js";
import { verifyUser } from "../middleware/UserAuth.js";

const router = express.Router();

router.get('/project', verifyUser, getProject);
router.get('/project/:id', verifyUser, getProjectById);
router.post('/project', verifyUser, createProject);
router.patch('/project/:id', verifyUser, updateProject);
router.delete('/project/:id', verifyUser, deleteProject);

export default router;