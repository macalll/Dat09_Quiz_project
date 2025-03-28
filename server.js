const express = require("express");
const app = express();
const userRoutes = require("./src/routes/userRoutes"); // Import route
const bodyParser = require("body-parser");

let serverStarted = false;
// Middleware
app.use(bodyParser.json()); // Cho phép đọc dữ liệu JSON từ request

// Sử dụng route
app.use("/api/users", userRoutes);

//check server
app.use("/", (req, res) => {
    if (serverStarted) {
        res.send("✅server chạy thành công!");
    } else {
        res.status(500).send("❌ Server chưa sẵn sàng!");
    }

});
// Chạy server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    serverStarted = true;
    console.log(`✅ Server đang chạy tại http://localhost:${PORT}`);
});
