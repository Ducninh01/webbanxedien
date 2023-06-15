<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quên mật khẩu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        .container {
            margin: 0 auto;
            width: 80%;
            max-width: 600px;
            background-color: #f5f5f5;
            padding: 20px;
            border-radius: 10px;
        }
        
        h1 {
            text-align: center;
        }
        
        form {
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
        }
        
        input[type="email"] {
            padding: 10px;
            border-radius: 5px;
            border: none;
            width: 100%;
            margin-bottom: 15px;
        }
        
        input[type="submit"] {
            background-color: #4CAF50;
            color: #fff;
            border: none;
            padding: 10px;
            cursor: pointer;
            margin-bottom: 10px;
            border-radius: 10px;
        }
        
        input[type="submit"]:hover {
            background-color: #3e8e41;
        }
       

    </style>
</head>
<body>
    <div class="container">
        <h1>Quên mật khẩu</h1>
        <?php
        if (isset($_POST['submit'])) { 
            $email = $_POST['email'];

            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                echo "<p style='color: red;'>Email không hợp lệ!</p>";
            } else {
                $token = bin2hex(random_bytes(16));
                $link = "https://localhost/banhangxedien/mail/reset_password.php?email=" . urlencode($email) . "&token=" . $token;
                require_once 'PHPMailer-master/src/PHPMailer.php';
                require_once 'PHPMailer-master/src/SMTP.php';
                require_once 'PHPMailer-master/src/Exception.php';
                $mail = new PHPMailer\PHPMailer\PHPMailer();
                $mail->CharSet = 'UTF-8';
                $mail->IsSMTP();
                $mail->Host = "smtp.gmail.com";
                $mail->Port = "587";
                $mail->SMTPSecure = "tls";
                $mail->SMTPAuth = true;
                $mail->Username = "duongvophi008@gmail.com";
                $mail->Password = "gcxonuqdrqxtojye";
                $mail->setFrom("duongvophi008@gmail.com", "Admin");
                $mail->AddAddress($email);
                $mail->Subject = "Yêu cầu đặt lại mật khẩu tài khoản của bạn (từ Admin)";
                $mail->Body = "Kính gửi khách hàng,\n\nChúng tôi nhận được yêu cầu đặt lại mật khẩu tài khoản của bạn.\nVui lòng nhấn vào liên kết sau để đặt lại mật khẩu:\n\n$link\n\nTrân trọng,\n\nAdmin cửa hàng Anbico.";
                if ($mail->Send()) {
                    echo "<p  style='color: green;'>Một email đã được gửi đến địa chỉ email bạn đã cung cấp. Vui lòng làm theo hướng dẫn trong email để đặt lại mật khẩu của bạn.</p>";
                    
                } else {
                    echo "<p style='color: red;'>Không thể gửi email. Vui lòng thử lại sau.</p>";
                    // echo "<p>Error: " . $mail->ErrorInfo . "</p>";
                }
            }
        } else { 
            ?>
                    <form method="post" autocomplete="off">
            <label for="email">Nhập địa chỉ Email của bạn:</label>
            <input type="email" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
            <input type="submit" name="submit" value="Gửi">
            </form> 
        <?php
        }
        ?>
    </div>
</body>
</html>
