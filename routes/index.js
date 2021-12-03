/** @format */

import express from "express";
// import controller
import { getUsers, Register, Login } from "../controller/Users.js";

import { VerifyToken } from "../middleware/VerifyToken.js";
// menggunakan fungsi router pada express
const router = express.Router();

// alamat url yang digunakan
router.get("/users", VerifyToken, getUsers);
router.post("/users", Register);
router.post("/login", Login);

export default router;
