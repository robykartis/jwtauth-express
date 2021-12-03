/** @format */

import express from "express";
// untuk menggunakan API diluar domain menggunakan cors
import cors from "cors";
import db from "./config/Database.js";
// import Users from "./models/UserModel.js";

// untuk refresh token saat setiap sudah login
import cookieParser from "cookie-parser";

// import router
import router from "./routes/index.js";

// import dotenv
import dotenv from "dotenv";
dotenv.config();

const app = express();

try {
  await db.authenticate();
  // auto migrate di database
  // await Users.sync();
  console.log("Database Conected ...");
} catch (error) {
  console.error(error);
}

// menggunakan midelware cors dengan origin alamat yang di izinkan untuk akses API
app.use(cors({ credentials: true, origin: "http://localhost:3000" }));
// menggunakan cookieparser
app.use(cookieParser());
// untuk menerima data dalam bentuk json
app.use(express.json());
// middelware
app.use(router);

app.listen(9000, () => console.log("Server Running..."));
