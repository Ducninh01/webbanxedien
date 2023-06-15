<?php
// Kết nối cơ sở dữ liệu nếu cần
// ...

if (isset($_POST['email'])) {
    // Lấy địa chỉ email và kiểm tra tồn tại trong cơ sở dữ liệu
    $email = $_POST['email'];
    
    // Code kiểm tra email có tồn tại trong cơ sở dữ liệu ở đây

    // Tạo ngẫu nhiên chuỗi token để dùng làm mật khẩu tạm thời
    $token = bin2hex(random_bytes(16));

    // Lưu trữ token vào cơ sở dữ liệu để xác thực sau
    // Code lưu trữ token vào cơ sở dữ liệu ở đây

    // Gửi email khôi phục mật khẩu
    $to = $email;
    $subject = 'Khôi phục mật khẩu';
    $message = 'Xin chào,<br><br>Mật khẩu tạm thời của bạn là: ' . $token . '<br><br> Vui lòng đăng nhập vào tài khoản của bạn bằng mật khẩu này và đổi mật khẩu mới. Đây là mật khẩu tạm thời và chỉ có giá trị trong vòng 30 phút.<br><br>Trân trọng,<br>Ban quản trị';
    $headers = 'From: webmaster@example.com' . "\r\n" .
               'Reply-To: webmaster@example.com' . "\r\n" .
               'Content-type: text/html; charset=UTF-8' . "\r\n" .
               'X-Mailer: PHP/' . phpversion();

    if (mail($to, $subject, $message, $headers)) {
        // Nếu gửi email thành công, tạo session lưu thông báo
        $_SESSION['success'] = 'Đã gửi email khôi phục mật khẩu đến ' . $email;
    } else {
        // Nếu gửi email thất bại, tạo session lưu thông báo
        $_SESSION['error'] = 'Lỗi gửi email khôi phục mật khẩu. Vui lòng thử lại sau.';
    }

    // Chuyển hướng người dùng đến trang thông báo kết quả
    header('Location: thong-bao-khoi-phuc-mat-khau.php');
    exit();
}
?>

<!-- Hiển thị form để nhập email để khôi phục mật khẩu -->
<form method="post">
    <label for="email">Nhập email để khôi phục mật khẩu:</label>
    <input type="email" name="email" required>
    <button type="submit">Gửi email khôi phục mật khẩu</button>
</form>

