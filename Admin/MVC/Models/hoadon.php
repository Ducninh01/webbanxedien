<?php
require_once("model.php");
class Hoadon extends Model
{
    var $table = "hoadon";
    var $contens = "MaHD";
    function trangthai($id){
        $query = "select * from HoaDon where TrangThai = $id  ORDER BY MaHD DESC";

        require("result.php");

        return $data;
    }
    function chitiethoadon($id){
        $query = "SELECT ct.*, s.TenSP as Ten FROM chitiethoadon as ct, sanpham as s, hoadon as hd WHERE ct.MaSP = s.MaSP AND ct.MaHD = hd.MaHD AND hd.MaHD = $id ORDER BY hd.NgayLap DESC";
    
        require("result.php");
    
        return $data;
    }
}