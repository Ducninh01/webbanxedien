-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 05, 2023 lúc 09:27 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopbike`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(3, 'img/banners/KHANG-DINH-DANG-CAP-MOI-LOI-HANH-TRINH-01-1024x1024.jpg'),
(7, 'img/banners/MACHINE-LEARNING-03-1024x1024.jpg'),
(13, 'img/banners/CUON-HUT-NOI-BAT-SANG-TRONG-TUNG-DUONG-NET-01-1024x1024.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(13, 43, 1, 15500000),
(16, 54, 1, 16900000),
(18, 43, 1, 15500000),
(19, 43, 1, 15500000),
(20, 43, 1, 15500000),
(21, 61, 1, 50000),
(22, 61, 1, 50000),
(23, 43, 1, 15500000),
(25, 43, 1, 15500000),
(26, 61, 1, 50000),
(27, 43, 11, 15500000),
(34, 43, 12, 15500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Xe điện'),
(2, 'Xe thanh lý'),
(3, 'phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucTT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(13, 14, '2023-05-19 22:15:44', 'Đức Ninh', '0396832140', 'Đức Ninh', '', 15500000, '1'),
(16, 19, '2023-05-25 09:45:20', 'oanh Ninh', '0123545125', 'thai binh', '', 16900000, '1'),
(18, 14, '2023-05-28 16:13:52', 'Đức Ninh', '0396832140', 'Đức Ninh', '', 15500000, '1'),
(19, 14, '2023-05-28 16:17:16', 'Đức Ninh', '0396832140', 'Đức Ninh', '', 15500000, '1'),
(20, 14, '2023-05-28 16:19:07', 'Đức Ninh', '0396832140', 'tân binh', '', 15500000, '1'),
(21, 14, '2023-05-28 16:19:33', 'Đức Ninh', '0396832140', 'Đại htb', '', 50000, '1'),
(22, 14, '2023-05-28 16:21:26', 'Đức Ninh', '0396832140', 'tân binh', '', 0, '1'),
(23, 20, '2023-05-28 16:26:49', 'oanh y', '0396832140', 'đại học havet', '', 15500000, '1'),
(25, 20, '2023-05-28 16:32:05', 'oanh y', '0396832140', 'Thái Nguyên', '', 15500000, '1'),
(26, 20, '2023-05-28 16:35:17', 'oanh y', '0396832140', 'thái tân', '', 50000, '1'),
(27, 14, '2023-05-29 14:56:16', 'Đức Ninh', '0396832140', 'tân binh', '', 170500000, '1'),
(34, 14, '2023-06-01 23:00:15', 'Đức Ninh', '0396832140', 'Đức Ninh', '', 186000000, '1'),
(35, 14, '2023-06-01 23:17:08', 'Đức Ninh', '0396832140', 'Đức Ninh', '', 12000000, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2023-05-14 14:38:07', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2023-05-14 14:38:13', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2023-05-14 14:38:16', 1),
(4, 'Trả góp', 'TraGop', 0, '2023-05-14 14:38:20', 1),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2023-05-14 14:38:25', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(1, 'Xmen', 'tải xuống.png', 'Xe điện xmen', 1),
(6, 'PEGA', 'images.jfif', 'Xe điện PEGA', 1),
(15, ' Ninja', 'images (1).jfif', 'Xe đạp điện Ninja', 1),
(44, 'vin fast', 'tải xuống.jfif', 'xe điện vin fast', 1),
(45, 'Gogo SS', 'ninh.jfif', 'xe máy điện gogo SS', 1),
(46, 'Valerio', 'ninh1.png', 'xe máy điện Valerio', 1),
(47, 'Pin', 'ảnh-web-02.jpg', 'Pin', 3),
(48, 'Mũ bảo hiểm', 'ảnh-web-04-800x800.jpg.webp', 'mũ bảo hiểm mô tả', 3),
(49, 'Điều khiển', 'Bo-dieu-khien.png', 'bộ điều khiển', 3),
(50, 'Sạc điện', 'Bo-sac.png.webp', 'Sạc điện', 3),
(51, 'Xmen osakar', '', 'xmen osakar', 2),
(52, 'Xman HTC 2017', '', 'Xman HTC 2017', 2),
(53, '133h phanh đĩa', '', '133h phanh đĩa', 2),
(54, 'Xman Yadea 2017', '', 'Xman Yadea 2017', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(1, 'Duong', 'Duong', 'Nam', '0976942493', 'duongls2ls@gmail.com', 'An Vĩnh', 'duongls2ls', 'e99a18c428cb38d5f260853678922e03', 2, 1),
(12, 'Trịnh', 'Phúc', 'Nam', '0383425354', 'phucaguero611@gmail.com', 'Đà Nẵng', 'liqin', 'e99a18c428cb38d5f260853678922e03', 2, 1),
(14, 'Đức', 'Ninh', 'Nam', '0396832140', 'duongvophi008@gmail.com', 'Đức Ninh', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1),
(17, 'Đức', 'oanh', 'Nữ', '031641651', 'nhanvien@gmail.com', 'thái tân', 'Hoàng Vũ', '77e2edcc9b40441200e31dc57dbb8829', 3, 1),
(18, 'oanh', 'oanh', 'Nữ', '0112475757', 'abc@gmail.com', 'Thái Nguyên', 'Hoàng', 'c3284d0f94606de1fd2af172aba15bf3', 1, 1),
(19, 'oanh', 'Ninh', 'Nam', '0123545125', 'admin12@gmail.com', '', 'Đức Ninh1', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(20, 'oanh', 'y', '', '0396832140', 'thohe@gmail.com', '', 'thong.oanh1', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(21, 'oanh', 'oanh', 'Nam', '0112475757', 'behoan2k1@gmail.com', 'Thái Nguyên', 'Hoàng Vũ', 'e10adc3949ba59abbe56e057f20f883e', 2, 1),
(22, 'hh', 'hh', 'Nam', '522521', 'thohe@gmail.com', 'qư', 'hhh', 'c26be8aaf53b15054896983b43eb6a65', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnh3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `ManHinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HDH` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CamSau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CamTruoc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CPU` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ram` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDCard` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(43, 1, 1, 'ANBICO XMEN IR 2023', 15500000, 10, 'img/products/dfghfjklkj.jpg', 'img/products/Untitled-1.jpg', 'img/products/dfghf.jpg', 5, '1830*740*1070', '1.600 W', '70 – 85 km (trạng thái bình thường)', '45 -50km/h', '160kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<blockquote><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\">Hãng xe: ANBICO</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\">Bảo hành động cơ điện: đổi mới 12 tháng – sửa chữa trong 36 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\">Bảo hành bộ điều khiển – IC : đổi mới 6 tháng – sửa chữa trong 12 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\">Bảo hành ắc quy: đổi mới 6 tháng – sửa chữa trong vòng 13 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\">Bảo hành giảm sóc: giảm sóc trước 12 tháng – giảm sóc sau 24 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\">Bảo hành khung xe, tay lái: 12 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\">Bảo hành tay ga, bộ sạc, đồng hồ: đổi mới 6 tháng – sửa chữa trong 12 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\">Bảo hành trục : 12 tháng</span></p></blockquote>', '2023-06-05 12:47:39'),
(44, 1, 1, 'ANBICO XMEN TIGER ', 15680000, 10, 'img/products/den-02-800x535.jpg', 'img/products/do-02-800x535.jpg', 'img/products/trang-02-800x535.jpg', 5, '1830*740*1070', 'iOS 13', '70 – 85 km (trạng thái bình thường)', '45 -50km/h', '140kg', '4 GB', '512 GB', 'Không có', '3969 mAh, có sạc nhanh', 0, 0, 1, '<blockquote><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\" segoe=\"\" ui\";\"=\"\">Hãng xe: ANBICO</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\" segoe=\"\" ui\";\"=\"\">Động cơ điện bảo hành trong 36 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\" segoe=\"\" ui\";\"=\"\">Bộ điều khiển – IC bảo hành trong 15 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\" segoe=\"\" ui\";\"=\"\">Ắc quy bảo hành trong 13 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\" segoe=\"\" ui\";\"=\"\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\" segoe=\"\" ui\";\"=\"\">Khung xe, tay lái bảo hành 15 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\" segoe=\"\" ui\";\"=\"\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Arial;\" segoe=\"\" ui\";\"=\"\">Trục bảo hành 15 tháng</span></p></blockquote>', '2023-05-17 21:28:19'),
(45, 1, 1, 'ANBICO XMEN BOSS', 16560000, 10, 'img/products/xmen-boss-800x582.jpg', 'img/products/xmen-boss-den-800x533.jpg', 'img/products/z2029175203759_219ea8abc29c170286d50451acbc847e-800x533.jpg', 5, '1830*740*1070', '1.550 W', '70 – 85 km (trạng thái bình thường)', '45 -50km/h', '160kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Động cơ điện bảo hành trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển – IC bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Ắc quy bảo hành trong 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khung xe, tay lái bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Trục bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><a href=\"https://youtu.be/9jndWZTDCfQ\" target=\"_blank\">video</a><br></p>', '2023-05-17 09:27:41'),
(46, 1, 1, 'ANBICO XMENX', 14600000, 10, 'img/products/xmenx-do-800x534.jpg', 'img/products/e2345ff381f044ae1de1.jpg', 'img/products/366297a449a78cf9d5b6.jpg', 2, '1800*730*1090', '1.500 W', '60 – 80 km (trạng thái bình thường)', '50 km/h', '140kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<blockquote><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Động cơ điện bảo hành trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển – IC bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Ắc quy bảo hành trong 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khung xe, tay lái bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Trục bảo hành 15 tháng</p></blockquote>', '2023-05-17 21:08:26'),
(47, 45, 1, 'ANBICO GOGO CROSS 2023', 16700000, 10, 'img/products/hong.jpg', 'img/products/ghi-mo.jpg', 'img/products/vang.jpg', 5, '1700*705*1040', '1.600 W', '80 – 100 km (trạng thái bình thường)', '40 – 50 km/h', '150kg', 'Tự động ngắt khi acquy đầy', '≤ 1 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<blockquote><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành động cơ điện: đổi mới 12 tháng – sửa chữa trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành bộ điều khiển – IC : đổi mới 6 tháng – sửa chữa trong 12 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành ắc quy: đổi mới 6 tháng – sửa chữa trong vòng 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành giảm sóc: giảm sóc trước 12 tháng – giảm sóc sau 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành khung xe, tay lái: 12 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành tay ga, bộ sạc, đồng hồ: đổi mới 6 tháng – sửa chữa trong 12 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành trục : 12 tháng</p></blockquote>', '2023-05-17 21:14:51'),
(48, 45, 1, 'ANBICO GOGO SS', 16900000, 12, 'img/products/a559021db4897ad72398-800x533.jpg', 'img/products/a559021db4897ad72398.jpg', 'img/products/49c9af7019e4d7ba8ef5-800x533.jpg', 1, '1700*705*1040', '1.600 W', '80 – 100 km (trạng thái bình thường)', '45 -50km/h', '150kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Động cơ điện bảo hành trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển – IC bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Ắc quy bảo hành trong 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khung xe, tay lái bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Trục bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><a href=\"https://youtu.be/9zeZqTmd8u4\" target=\"_blank\">Video</a><br></p>', '2023-06-05 13:01:40'),
(54, 45, 1, 'ANBICO GOGO ONE', 16900000, 10, 'img/products/z1983731348157_5346b2648d91c20edcabd4512af892ac-800x534.jpg', 'img/products/gogo-once-anbico-800x533.jpg', 'img/products/z1983731382814_5e2f5ab4b1f98e11109ef38ceeec1c43-800x534.jpg', 1, '1700*705*1040', '1.600 W', '80 – 100 km (trạng thái bình thường)', '40 – 50 km/h', '150kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Động cơ điện bảo hành trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển – IC bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Ắc quy bảo hành trong 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khung xe, tay lái bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Trục bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><a href=\"https://youtu.be/9zeZqTmd8u4\" target=\"_blank\">Video</a></p>', '2023-06-05 13:02:39'),
(55, 46, 1, 'ANBICO VALERIO LS 2023', 17200000, 10, 'img/products/16-01-800x535.jpg', 'img/products/15-01-800x535.jpg', 'img/products/2-01-800x535.jpg', 1, '1700*705*1040', '1.600 W', '60 – 80 km (trạng thái bình thường)', '40 – 50 km/h', '150kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Hãng xe: ANBICO</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Bảo hành động cơ điện: đổi mới 12 tháng – sửa chữa trong 36 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Bảo hành bộ điều khiển – IC : đổi mới 6 tháng – sửa chữa trong 12 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Bảo hành ắc quy: đổi mới 6 tháng – sửa chữa trong vòng 13 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Bảo hành giảm sóc: giảm sóc trước 12 tháng – giảm sóc sau 24 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Bảo hành khung xe, tay lái: 12 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Bảo hành tay ga, bộ sạc, đồng hồ: đổi mới 6 tháng – sửa chữa trong 12 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Bảo hành trục : 12 tháng</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><a href=\"https://youtu.be/9jndWZTDCfQ\" target=\"_blank\"><span style=\"font-family: Nunito;\">Video</span></a><br></p>', '2023-05-17 21:27:06'),
(56, 46, 1, 'ANBICO VALERIO GS', 13789000, 10, 'img/products/5-01-800x535.jpg', 'img/products/4-01-800x535.jpg', 'img/products/1-01-800x535.jpg', 1, '1700*705*1040', '1.550 W', '80 – 100 km (trạng thái bình thường)', '40 – 50 km/h', '140kg', 'Tự động ngắt khi acquy đầy', '≤ 1 kw', ' acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Động cơ điện bảo hành trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển – IC bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Ắc quy bảo hành trong 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khung xe, tay lái bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Trục bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><a href=\"https://youtu.be/8k8EXTibmtE\" target=\"_blank\">Video</a><br></p>', '2023-06-05 13:03:23'),
(57, 46, 1, 'ANBICO VALERIO SP', 14490000, 10, 'img/products/4-01-800x535.jpg', 'img/products/3-01-800x535.jpg', 'img/products/1-01-800x535.jpg', 1, '1770mm x 700mm x 1110mm', '1.000 W', '80 – 100 km (trạng thái bình thường)', '40 – 50 km/h', '160kg', 'Tự động ngắt khi acquy đầy', '≤ 1 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Động cơ điện bảo hành trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển – IC bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Ắc quy bảo hành trong 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khung xe, tay lái bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Trục bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><a href=\"https://youtu.be/CRyVXC3InPk\" target=\"_blank\">Video</a><br></p>', '2023-06-05 13:03:41'),
(58, 46, 1, 'ANBICO VALERIO S 2020', 14600000, 12, 'img/products/PRO_2575-800x534.jpg', '/img/products/LAM_2148-800x534.jpg', '/img/products/LAM_2131-800x534.jpg', 1, '1770mm x 700mm x 1110mm', '1.600 W', '80 – 100 km (trạng thái bình thường)', '40 – 50 km/h', '150kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Động cơ điện bảo hành trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển – IC bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Ắc quy bảo hành trong 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khung xe, tay lái bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Trục bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><a href=\"https://youtu.be/JOUmjKWyIMg\" target=\"_blank\">Video</a><br></p>', '2023-06-05 13:04:04'),
(59, 46, 1, 'ANBICO VALERIOX', 15500000, 10, 'img/products/anh-san-pham.jpg', '/img/products/valeriox.jpg', '/img/products/valeriox-2-800x537.jpg', 1, '1745mm x 690mm x 1125mm', '1.600 W', '80 – 100 km (trạng thái bình thường)', '40 – 50 km/h', '150kg', 'Tự động ngắt khi acquy đầy', '≤ 1 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Động cơ điện bảo hành trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển – IC bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Ắc quy bảo hành trong 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khung xe, tay lái bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Trục bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><a href=\"https://youtu.be/S3VQLU08Lwg\" target=\"_blank\">Video</a><br></p>', '2023-05-19 22:07:13'),
(60, 6, 1, 'ANBICO F88', 15500000, 10, 'img/products/f88-xam-bac.jpg', '/img/products/f88-trang.jpg', '/img/products/F88-DO.jpg', 1, '1770mm x 700mm x 1110mm', '1.600 W', '80 – 100 km (trạng thái bình thường)', '40 – 50 km/h', '160kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Động cơ điện bảo hành trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển – IC bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Ắc quy bảo hành trong 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Giảm sóc: giảm sóc trước bảo hành 15 tháng – giảm sóc sau bảo hành 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khung xe, tay lái bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Tay ga, bộ sạc, đồng hồ bảo hành trong 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Trục bảo hành 15 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><a href=\"https://youtu.be/VDzE8-4r_To\" target=\"_blank\">Video</a></p>', '2023-06-05 13:00:57'),
(61, 50, 3, 'Bộ sạc điện', 50000, 20, 'img/products/Bo-sac.png', '', '', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ sạc ắc quy Anbico điện áp 48V/12Ah & 60V/20Ah</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Có chức năng chống ngược cực tính khi nạp điện</p>', '2023-05-21 21:00:55'),
(62, 49, 3, 'Bộ điều khiển', 40000, 10, 'img/products/Bo-dieu-khien.png', '', '', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bộ điều khiển 9 sò công suất</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Có chức năng bảo vệ quá tải 22±0.5A</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Có chức năng bảo vệ điện áp thấp 42± 0.5V</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Góc lệch pha 60 độ</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Chống nước khi đi dưới trời mưa hoặc rửa xe</p>', '2023-05-21 20:59:59'),
(63, 48, 3, 'Mũ bảo hiểm (có kính) mẫu mới ', 90000, 30, 'img/products/ảnh-web-04.jpg', '', '', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '', '2023-05-21 08:54:38'),
(64, 47, 3, 'Ắc quy 20AH', 95000, 50, 'img/products/ảnh-web-02.jpg', '', '', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Ắc quy khô nhãn hiệu Chilwee sản xuất cho Anbico</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Sử dụng cho xe có tổng điện áp là 48V và dòng điện 12Ah</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Ắc quy kín khí sử dụng riêng cho xe điện</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Ắc quy 6 ngăn</span></p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\"><span style=\"font-family: Nunito;\">Dung lượng ắc quy là 20Ah</span></p>', '2023-06-05 13:50:36'),
(74, 51, 2, 'Xmen Osakar pro', 15000, 10, 'img/products/Xe-may-dien-Xmen-Osakar-PRO-2-465x349.jpg', 'img/products/Xe-may-dien-Xmen-Osakar-PRO-4-465x349.jpg', 'img/products/Xe-may-dien-Xmen-Osakar-PRO-465x349.jpg', 1, '1700*705*1040', '1.600 W', '70 – 85 km (trạng thái bình thường)', '40 – 50 km/h', '150kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành động cơ điện: đổi mới 12 tháng – sửa chữa trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành bộ điều khiển – IC : đổi mới 6 tháng – sửa chữa trong 12 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành ắc quy: đổi mới 6 tháng – sửa chữa trong vòng 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành giảm sóc: giảm sóc trước 12 tháng – giảm sóc sau 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành khung xe, tay lái: 12 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành tay ga, bộ sạc, đồng hồ:&nbsp; sửa chữa trong 12 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành trục : 12 tháng</p>', '2023-06-05 13:48:00'),
(75, 51, 2, 'Xmen Osakar pro 2', 15, 1, 'img/products/Xe-may-dien-Xmen-Osakar-PRO-2-465x349.jpg', '/img/products/Xe-may-dien-Xmen-Osakar-PRO-4-465x349.jpg', '/img/products/Xe-may-dien-Xmen-Osakar-PRO-465x349.jpg', 1, '1700*705*1040', '1.600 W', '80 – 100 km (trạng thái bình thường)', '40 – 50 km/h', '150kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành động cơ điện: đổi mới 12 tháng – sửa chữa trong 36 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành bộ điều khiển – IC : đổi mới 6 tháng – sửa chữa trong 12 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành ắc quy: đổi mới 6 tháng – sửa chữa trong vòng 13 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành giảm sóc: giảm sóc trước 12 tháng – giảm sóc sau 24 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành khung xe, tay lái: 12 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành tay ga, bộ sạc, đồng hồ:  sửa chữa trong 12 tháng</p><p style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành trục : 12 tháng</p>', '2023-06-05 13:50:12'),
(76, 52, 2, 'Xman HTC 2017', 15, 1, 'img/products/Xe-may-dien-Xmen-Osakar-PRO-2-465x349.jpg', '', '', 1, '1700*705*1040', '1.600 W', '70 – 85 km (trạng thái bình thường)', '40 – 50 km/h', '150kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(51, 51, 51); font-family: MyriadPro-Regular, Tahoma; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành động cơ điện: đổi mới 12 tháng – sửa chữa trong 36 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành bộ điều khiển – IC : đổi mới 6 tháng – sửa chữa trong 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành ắc quy: đổi mới 6 tháng – sửa chữa trong vòng 13 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành giảm sóc: giảm sóc trước 12 tháng – giảm sóc sau 24 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành khung xe, tay lái: 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành tay ga, bộ sạc, đồng hồ: đổi mới 6 tháng – sửa chữa trong 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành trục : 12 tháng</li></ul>', '2023-06-05 14:06:24'),
(77, 54, 2, 'Xman Yadea 2017', 15, 1, 'img/products/Xe-may-dien-Xmen-Osakar-PRO-465x349.jpg', '', '', 1, '1830*740*1070', '1.500 W', '80 – 100 km (trạng thái bình thường)', '40 – 50 km/h', '160kg', 'Tự động ngắt khi acquy đầy', '≤ 1.2 kw', '5 acquy', 'Phanh đĩa cả trước và sau', 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(51, 51, 51); font-family: MyriadPro-Regular, Tahoma; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Hãng xe: ANBICO</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành động cơ điện: đổi mới 12 tháng – sửa chữa trong 36 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành bộ điều khiển – IC : đổi mới 6 tháng – sửa chữa trong 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành ắc quy: đổi mới 6 tháng – sửa chữa trong vòng 13 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành giảm sóc: giảm sóc trước 12 tháng – giảm sóc sau 24 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành khung xe, tay lái: 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành tay ga, bộ sạc, đồng hồ: đổi mới 6 tháng – sửa chữa trong 12 tháng</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Bảo hành trục : 12 tháng</li></ul>', '2023-06-05 14:07:14');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
