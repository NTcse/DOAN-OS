-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 29, 2018 lúc 07:53 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pccc2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `mahd` varchar(100) NOT NULL,
  `ma_sp` varchar(15) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucsp`
--

CREATE TABLE `danhmucsp` (
  `madanhmuc` varchar(5) NOT NULL,
  `tendanhmuc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `danhmucsp`
--

INSERT INTO `danhmucsp` (`madanhmuc`, `tendanhmuc`) VALUES
('BABC', 'Bình chữa cháy bột ABC'),
('BBC', 'Bình chữa cháy bột BC'),
('BCO2', 'Bình chữa cháy khí CO2'),
('CCCTD', 'Quả cầu chữa cháy tự động'),
('CVCC', 'Cuộn vòi chữa cháy'),
('DVBT', 'Bảo trì bình chữa cháy'),
('PKCC', 'Phụ kiện chữa cháy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ngay` date NOT NULL,
  `tennguoinhan` varchar(50) NOT NULL,
  `diachinguoinhan` varchar(80) NOT NULL,
  `ngaynhan` date NOT NULL,
  `dienthoainguoinhan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `email` varchar(50) NOT NULL,
  `matkhau` varchar(32) NOT NULL,
  `tenkh` varchar(50) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `dienthoai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantri`
--

CREATE TABLE `quantri` (
  `usename` varchar(30) NOT NULL,
  `matkhau` varchar(32) NOT NULL,
  `hoten` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ma_sp` varchar(15) NOT NULL,
  `ten_sp` varchar(200) NOT NULL,
  `mota` text NOT NULL,
  `gia` int(11) NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `madanhmuc` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ma_sp`, `ten_sp`, `mota`, `gia`, `hinh`, `madanhmuc`) VALUES
('BABC01', 'Bình chữa cháy bột ABC MFTZL35 35kg có xe đẩy', 'Bình chữa cháy bột ABC MFTZL35 35kg có xe đẩy  có cùng kích thước và thông số kỹ thuật với bình 35kg dạng bột BC nhưng sử dụng bột chữa cháy dạng ABC có chất lượng và hàm lượng chữa cháy cao hơn đảm bảo chữa cháy tốt hơn trên nhiều điều kiện xuất phát của đám cháy. Với giá thanh cao hơn không quá nhiều ở sự chênh lệnh giá bột bên trong nên nếu bạn cần một nhu cầu chữa cháy an toàn cao hơn có thể sử dụng bình này.', 1850000, 'binh-chua-chay-bot-abc-mfzl35-35kg.jpg', 'BABC'),
('BABC02', 'Bình chữa cháy bột ABC MFZL8 8kg', 'Bình chữa cháy bột ABC MFZL8 8kg  hay còn gọi là "bình chữa cháy đa dụng khô hóa tổng hợp" có trọng lượng bột bên trong là 8kg dạng ABC chữa cháy đa năng trên nhiều môi trường khác nhau. Bình được sản xuất với độ an toàn cao không gây nổ đã được kiểm định và thử nghiệm PCCC tại Việt Nam. Việc bảo quản bình dạng bột cũng không nhiều yêu cầu khó, việc bạn cần làm chỉ là để tại một nơi dễ thấy dễ lấy và có thể sử dụng bất cứ lúc nào.', 385000, 'binh-chua-chay-bot-abc-mfzl8-8kg.jpg', 'BABC'),
('BABC03', 'Bình chữa cháy bột ABC MFZL4 4kg', 'Bình chữa cháy bột ABC MFZL4 4kg  gọi là bình loại tốt vì bình sử dụng bột chữa cháy dạng ABC có hàm lượng chữa cháy cao hơn và đa dụng hơn bột dạng BC. Khả năng chữa cháy đa dụng được mọi đám cháy cùng trọng lượng là dạng bình phổ thông nên bình thường được đặt ở một số khu vực có yêu cầu tiêu chuẩn an toàn cao hơn như trong siêu thị, phòng nghiên cứu, phòng thí nghiệm,... Ngoài ra ở một số nơi khắt khe hơn thì bình bột ABC 4kg còn được đặt chung với một bình khí CO2 để có hiệu quả cao nhất.', 290000, 'binh-chua-chay-bot-abc-mfzl4-4kg.jpg', 'BABC'),
('BBC01', 'Bình chữa cháy bột BC MFTZ35 35kg Có Xe Đẩy', 'Bình chữa cháy bột BC MFTZ35 35kg Có Xe Đẩy tiện dụng kèm thiết kế vòi phun dài thuận tiện cho việc chữa cháy trong hẻm ngách, súng phun an toàn thuận tiện chữa cháy tầm xa. Về kích thước, có thể hình dung bình bột chữa cháy 35kg giống i như bình gas trong nhà bạn, chỉ khác là bình được gắn thêm một xe kéo giúp tiện cho việc di chuyển chữa cháy lưu động. Khung xe được thiết kế có độ vững chắc và có thể tháo rời thay thế phụ kiện.', 1750000, 'binh-chua-chay-bot-bc-mfz35-35kg.jpg', 'BBC'),
('BBC02', 'Bình chữa cháy bột BC MFZ8 8kg GIÁ RẺ', 'Bình chữa cháy bột BC MFZ8 8kg GIÁ RẺ  thuộc dòng bình chữa cháy phổ thông có khả năng sử dụng cao hơn bình bột 4kg nhờ lượng bột bên trong bình nhiều hơn nhằm đáp ứng nhu cầu chữa cháy trong diện rộng hơn. Sử dụng bột chữa cháy dạng BC có giá thành rẻ nên thường thấy ở các khu dân cư, dãy nhà trọ, trung cư, trạm xăng dầu,... bình bột chữa cháy 8kg mã hàng MFZ8 có tổng trọng lượng khoảng 10kg tính cả vỏ bình nên một số khu vực có phụ nữ hay người lớn tuổi sẽ thường đặt kèm thêm một bình loại nhỏ.', 310000, 'binh-chua-chay-bot-bc-mfz8-8kg.jpg', 'BBC'),
('BBC03', 'Bình chữa cháy bột BC MFZ4 4kg GIÁ RẺ', 'Bình chữa cháy bột BC MFZ4 4kg GIÁ RẺ  thuộc dòng sản phẩm bình chữa cháy được sử dụng nhiều nhất vì bình có độ an toàn cao, kích thước phù hợp để có thể lắp đặt ở mọi khu vực công ty, nhà xưởng, văn phòng trung cư, dãy trọ,... Ngoài ra bình chữa cháy bột bc mfz4 có giá thành rẻ hơn tất cả các loại bình khác với khả năng chữa cháy đa năng hiệu quả cao.', 245000, 'binh-chua-chay-bot-bc-mfz4-4kg.jpg', 'BBC'),
('BCO21', 'Bình chữa cháy khí co2 mt3 3kg', 'bình-chữa-cháy-khí-co2-mt3-3kg', 390000, 'binh-chua-chay-khi-co2-mt3-3kg.jpg', 'BCO2'),
('BCO22', 'bình chữa cháy khí co2 mt5 5kg', 'bình-chữa-cháy-khí-co2-mt5-5kg', 585000, 'binh-chua-chay-khi-co2-mt5-5kg.jpg', 'BCO2'),
('BCO23', 'Bình chữa cháy khí CO2 MT24-24KG', 'bình-chữa-cháy-khí-co2-mt24-24kg', 3790000, 'binh-chua-chay-khi-co2-mt24-24kg.jpg', 'BCO2'),
('CCCTD01', 'quả cầu chữa cháy tự động xzftb6 6kg', 'quả cầu chữa cháy tự động xzftb6-6kg', 480000, 'qua-cau-chua-chay-tu-dong-xzftb6-6kg.jpg', 'CCCTD'),
('CCCTD02', 'quả cầu chữa cháy tự động xzftb8 8kg', 'quả cầu chữa cháy tự động xzftb8 8kg', 550000, 'qua-cau-chua-chay-tu-dong-xzftb8-8kg.jpg', 'CCCTD'),
('CVCC01', 'cuộn vòi chữa cháy d50 đức 17bar 20m jakob eschbach germany', 'cuộn-vòi-chữa-cháy-d50-đức-17bar-20m-jakob-eschbach-germany', 1650000, 'cuon-voi-chua-chay-d50-duc-17bar-20m.jpg', 'CVCC'),
('CVCC02', 'cuộn vòi chữa cháy d50 hàn quốc 13bar-20m-korea', 'cuộn vòi chữa cháy d50 hàn quốc 13bar 20m korea', 820000, 'cuon-voi-chua-chay-d50-han-quoc-13bar-20m.jpg', 'CVCC'),
('CVCC03', 'cuộn vòi chữa cháy d65 đức 17bar 20m jakob eschbach germany', 'cuộn-vòi-chữa-cháy-d65-đức-17bar-20m-jakob-eschbach-germany', 1850000, 'cuon-voi-chua-chay-d65-duc-17bar-20m.jpg', 'CVCC'),
('PKCC01', 'đèn cứu hỏa', 'đèn cứu hỏa báo  động   vừa xảy ra  vụ cháy ', 200000, 'den-cuu-hoa.jpg', 'PKCC'),
('PKCC02', 'hộp chữa cháy', 'hộp chữa cháy nơi chứa ống dẫn nước  ', 250000, 'hop-chua-chay.jpg', 'PKCC'),
('PKCC03', 'Tiểu lệnh', 'tiểu lệnh bản thông từn bước cần thực hiện khi có  cháy ', 50000, 'tieu-lenh.jpg', 'PKCC'),
('PKCC04', 'máy bơm chữa cháy tohatsu mới nhất vf21as', 'máy-bơm-chữa-cháy-tohatsu-mới-nhất\r\nMÁY BƠM NƯỚC CÔNG SUẤT MẠNH GIÚP CHỮA CHÁY NHANH TẠI CHỖ ', 2500000, 'may-bom-chua-chay-tohatsu-moi-nhat-vf21as.jpg', 'PKCC');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`mahd`,`ma_sp`),
  ADD KEY `ma_vd` (`ma_sp`);

--
-- Chỉ mục cho bảng `danhmucsp`
--
ALTER TABLE `danhmucsp`
  ADD PRIMARY KEY (`madanhmuc`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma_sp`),
  ADD KEY `maloai` (`madanhmuc`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`ma_sp`) REFERENCES `sanpham` (`ma_sp`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`email`) REFERENCES `khachhang` (`email`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`madanhmuc`) REFERENCES `danhmucsp` (`madanhmuc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
