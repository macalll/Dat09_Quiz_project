const express = require("express");
const router = express.Router();
const userController = require("../controllers/userController");

router.get("/", userController.getAllUsers);
router.post("/", userController.createUser);
router.delete("/:user_id", userController.deleteUser);
router.put("/:user_id", userController.updateUser);
module.exports = router;
