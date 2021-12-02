/** @format */

import Sequelize from "sequelize";
const db = new Sequelize("db_auth_express", "root", "", {
  host: "localhost",
  dialect: "mysql",
});
export default db;
