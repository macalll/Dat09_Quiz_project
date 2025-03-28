const { User } = require("../models");
const moment = require("moment-timezone");
//Lấy tất cả user
exports.getAllUsers = async (req, res) => {
    try {
        const users = await User.findAll();
        res.json(users);
    } catch (error) {
        res.status(500).json({ message: "Lỗi server", error });
    }
};

//Thêm user
exports.createUser = async (req, res) => {
    try {

        const { username, password, role } = req.body;
        if (!username || !password || !role) {
            return res.status(400).json({ message: "Vui lòng nhập đầy đủ thông tin" });
        }
        const createdAt = moment().tz("Asia/Ho_Chi_Minh").format("YYYY-MM-DD HH:mm:ss");
        const updatedAt = moment().tz("Asia/Ho_Chi_Minh").format("YYYY-MM-DD HH:mm:ss");

        const newUser = await User.create({ username, password, role, createdAt, updatedAt });
        res.status(201).json({ message: "Người dùng đã được tạo", user: newUser });
    } catch (error) {
        res.status(500).json({ message: "Lỗi server", error });
    }
};

//Xoá user
exports.deleteUser = async (req, res) => {
    try {
        const { user_id } = req.params;
        const user = await User.findByPk(user_id);
        if (!user) {
            return res.status(404).json({ message: "Không tìm thấy người dùng" });
        }
        await user.destroy();
        res.status(200).json({ message: `Người dùng có ID ${user_id} đã bị xóa` });
    } catch (error) {
        res.status(500).json({ message: "Lỗi server", error: error.message || error });
    }
}

//Cập nhật user
exports.updateUser = async (req, res) => {
    try {
        const { user_id } = req.params;
        const { username, password, role, email } = req.body;
        const user = await User.findByPk(user_id);
        if (!user) {
            return res.status(404).json({ message: "Không tìm thấy người dùng" });
        }
        user.username = username || user.username;
        user.password = password || user.password;
        user.role = role || user.role;
        user.email = email || user.email;
        user.updatedAt = moment().tz("Asia/Ho_Chi_Minh").format("YYYY-MM-DD HH:mm:ss");
        await user.save();
        res.status(200).json({ message: `Người dùng có ID ${user_id} đã được cập nhật`, user });
    } catch (error) {
        res.status(500).json({ message: "Lỗi server", error: error.message || error });
    }
}