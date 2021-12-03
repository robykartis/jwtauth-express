/** @format */

import express from "express";
// import controller
import { getUsers, Register, Login, Logout } from "../controller/Users.js";
// Import refreshtoken
import { refreshToken } from "../controller/RefreshToke.js";

import { VerifyToken } from "../middleware/VerifyToken.js";
// menggunakan fungsi router pada express
const router = express.Router();

// alamat url yang digunakan
router.get("/users", VerifyToken, getUsers);
router.post("/users", Register);
router.post("/login", Login);
router.get("/token", refreshToken);
router.delete("/logout", Logout);

export default router;
