const { Sequelize } = require("sequelize");
require("dotenv").config(); // Load biến môi trường từ .env

const sequelize = new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASS, {
    host: process.env.DB_HOST,
    dialect: "mysql",
    logging: false, // Tắt log SQL (nếu cần)
});

sequelize.authenticate()
    .then(() => console.log("✅ Kết nối MySQL thành công!"))
    .catch(err => console.error("❌ Lỗi kết nối MySQL:", err));

module.exports = sequelize;
