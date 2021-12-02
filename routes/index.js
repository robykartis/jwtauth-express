/** @format */

import express from "express";
// import controller
import { getUsers, Register, Login } from "../controller/Users.js";

import { verifyToken } from "../middleware/VerifyToken.js";
// menggunakan fungsi router pada express
const router = express.Router();

// alamat url yang digunakan
router.get("/users", verifyToken, getUsers);
router.post("/users", Register);
router.post("/login", Login);

export default router;
