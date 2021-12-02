/** @format */

import express from "express";
import db from "./config/Database.js";
// import Users from "./models/UserModel.js";

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

// untuk menerima data dalam bentuk json
app.use(express.json());
// middelware
app.use(router);

app.listen(9000, () => console.log("Server Running..."));
