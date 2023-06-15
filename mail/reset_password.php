<!DOCTYPE HTML>
<html>

<head>
    <title>Quên mật khẩu</title>
    <style>
        form {
  max-width: 400px;
  margin: auto;
  padding: 20px;
  background-color: #f2f2f2;
}

input[type="email"],
input[type="password"] {
  width: 100%;
  padding: 12px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: #fff;
  border-bottom: 2px solid #ddd;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
}

input[type="submit"]:hover {
  background-color: #45a049;
}

h1 {
  text-align: center;
  color: #333;
}

    </style>
</head>

<body>
    <?php
     include "../Admin/MVC/Models/connection.php";
    ?>

    <?php
    if (isset($_POST['submit'])) { // Xử lý dữ liệu khi người dùng nhập mật khẩu mới và bấm nút Submit
        $email = $_POST['email'];
        $token = $_POST['token'];
        $password = $_POST['password'];
        $password_confirm = $_POST['password_confirm'];

    // Kiểm tra tính đúng đắn của hai giá trị mật khẩu
    if ($password !== $password_confirm) {
        echo "<script>alert('Nhập lại mật khẩu không trùng khớp, vui lòng nhập lại!');</script>";
        // echo "<p style='color:red'>Nhập lại mật khẩu không trùng khớp, vui lòng nhập lại!</p>";
    } else{
        // Mã hóa mật khẩu sử dụng hàm md5()
        $hash_password = md5($password);
        // Thực hiện truy vấn SQL
        $update_query = "UPDATE nguoidung SET MatKhau='$hash_password' WHERE Email='$email'";
        $result = mysqli_query($conn, $update_query);
        
        // Xử lý lỗi
        if (!$result) {
            printf("Error: %s\n", mysqli_error($conn));
            exit();
        } else {
            // Hiển thị thông báo thành công cho người dùng
            // echo "<p>Mật khẩu của bạn đã được đặt lại thành công.</p>";
            echo "<script>alert('Mật khẩu của bạn đã được đặt lại thành công.');</script>";
        }
        
        // Đóng kết nối
        mysqli_close($conn);
    }
    } else {
        // Hiển thị form nhập mật khẩu mới khi người dùng chưa gửi dữ liệu
        if (isset($_GET['email']) && isset($_GET['token'])) { // Kiểm tra tính hợp lệ của email và token trên đường dẫn
            $email = $_GET['email'];
            $token = $_GET['token'];
    ?>
            <h1>Đặt lại mật khẩu</h1>
            <form method="post">
            <label for="email">Email của bạn</label>
            <input type="email" name="email" value="<?php echo htmlspecialchars($email); ?>" readonly>
            <br>
            <input type="hidden" name="token" value="<?php echo htmlspecialchars($token); ?>">
            <label for="password">Mật khẩu mới</label>
            <input type="password" name="password" id="password" required>
            <br>
            <label for="password_confirm">Nhập lại mật khẩu mới</label>
            <input type="password" name="password_confirm" id="password_confirm" required>
            <br>
            <input type="submit" name="submit" value="Cập nhật mật khẩu">
            </form>
    <?php
        } else {
            echo "<p>Yêu cầu không hợp lệ</p>";
        }
    }
    ?>

</body>

</html>
