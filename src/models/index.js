const { Sequelize } = require("sequelize");
const sequelize = require("../config/database");

const User = require("./user")(sequelize);

const db = { sequelize, User };
module.exports = db;
