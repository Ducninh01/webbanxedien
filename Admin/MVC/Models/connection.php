<?php 
    class Connection{
        var $conn;

        function __construct()
        {
            $this->conn = new mysqli("localhost", "root", "", "shopbike");
            $this->conn->set_charset("utf8");

            if ($this->conn->connect_error) {
                die("Connection failed: " . $this->conn->connect_error);
            }
        }
    }

    $connection = new Connection();
    $conn = $connection->conn;
    $conn = mysqli_connect("localhost", "root", "", "shopbike");

// Kiểm tra kết nối
if (mysqli_connect_errno()) {
    die("Failed to connect to MySQL: " . mysqli_connect_error());
}
?>
