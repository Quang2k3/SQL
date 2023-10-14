go 
use DKHocPhan
--Insert data 
-- Thêm dữ liệu mẫu vào bảng SinhVien
INSERT INTO SinhVien (MaSinhVien, HovaTen, Lop, NgaySinh, GioiTinh, DiaChi, SoDienThoai, Email, MaLopHoc)
VALUES
  ('SV001', 'Nguyen Van A', 'A01', '2000-01-01', 'Nam', '123 ABC Street', '1234567890', 'sv1@example.com', 1),
  ('SV002', 'Tran Thi B', 'B02', '2000-02-02', 'Nữ', '456 XYZ Street', '9876543210', 'sv2@example.com', 2),
  ('SV003', 'Ho Van C', 'C03', '2000-03-03', 'Nam', '789 LMN Street', '1112223333', 'sv3@example.com', 3),
  ('SV004', 'Le Thi D', 'D04', '2000-04-04', 'Nữ', '111 PQR Street', '4445556666', 'sv4@example.com', 4),
  ('SV005', 'Pham Van E', 'E05', '2000-05-05', 'Nam', '222 XYZ Street', '7778889999', 'sv5@example.com', 5),
  ('SV006', 'Nguyen Van F', 'F06', '2000-06-06', 'Nam', '333 ABC Street', '1010101010', 'sv6@example.com', 6),
  ('SV007', 'Tran Van G', 'G07', '2000-07-07', 'Nam', '444 LMN Street', '1212121212', 'sv7@example.com', 7),
  ('SV008', 'Ho Thi H', 'H08', '2000-08-08', 'Nữ', '555 PQR Street', '1313131313', 'sv8@example.com', 8),
  ('SV009', 'Le Van I', 'I09', '2000-09-09', 'Nam', '666 XYZ Street', '1414141414', 'sv9@example.com', 9),
  ('SV010', 'Pham Thi K', 'K10', '2000-10-10', 'Nữ', '777 ABC Street', '1515151515', 'sv10@example.com', 10);

-- Thêm dữ liệu mẫu vào bảng MonHoc
INSERT INTO MonHoc (MaMonHoc, TenMonHoc, SoTinChi)
VALUES
  ('MH001', 'Toán', '3'),
  ('MH002', 'Vật lý', '3'),
  ('MH003', 'Hóa học', '3'),
  ('MH004', 'Lịch sử', '3'),
  ('MH005', 'Ngữ văn', '3'),
  ('MH006', 'Tiếng Anh', '3'),
  ('MH007', 'Địa lý', '3'),
  ('MH008', 'Công nghệ', '3'),
  ('MH009', 'Sinh học', '3'),
  ('MH010', 'Ngoại ngữ', '3');

-- Thêm dữ liệu mẫu vào bảng KetQuaHocTap
INSERT INTO KetQuaHocTap (MaSinhVien, MaMonHoc, DiemSo)
VALUES
  ('SV001', 'MH001', 8.0),
  ('SV002', 'MH001', 7.5),
  ('SV003', 'MH001', 9.0),
  ('SV004', 'MH002', 6.0),
  ('SV005', 'MH002', 8.5),
  ('SV006', 'MH003', 7.0),
  ('SV007', 'MH003', 6.5),
  ('SV008', 'MH004', 8.0),
  ('SV009', 'MH005', 9.5),
  ('SV010', 'MH006', 8.0);

-- Thêm dữ liệu mẫu vào bảng LopHoc
INSERT INTO LopHoc (MaLopHoc, TenLopHoc, MaMonHoc, MaGiangVien, SoLuongSinhVien)
VALUES
  (1, 'Lop A01', 'MH001', 101, 20),
  (2, 'Lop B02', 'MH002', 102, 25),
  (3, 'Lop C03', 'MH003', 103, 22),
  (4, 'Lop D04', 'MH004', 104, 30),
  (5, 'Lop E05', 'MH005', 105, 18),
  (6, 'Lop F06', 'MH006', 106, 24),
  (7, 'Lop G07', 'MH007', 107, 21),
  (8, 'Lop H08', 'MH008', 108, 27),
  (9, 'Lop I09', 'MH009', 109, 19),
  (10, 'Lop K10', 'MH010', 110, 23);

-- Thêm dữ liệu mẫu vào bảng GiangVien
INSERT INTO GiangVien (MaGiangVien, TenGiangVien, Email, BoMon)
VALUES
  (101, 'Nguyen Van X', 'gv1@example.com', 'Toan'),
  (102, 'Tran Thi Y', 'gv2@example.com', 'Vat ly'),
  (103, 'Ho Van Z', 'gv3@example.com', 'Hoa hoc'),
  (104, 'Le Van W', 'gv4@example.com', 'Lich su'),
  (105, 'Pham Van V', 'gv5@example.com', 'Ngu van'),
  (106, 'Nguyen Van U', 'gv6@example.com', 'Tieng Anh'),
  (107, 'Tran Van T', 'gv7@example.com', 'Dia ly'),
  (108, 'Ho Thi S', 'gv8@example.com', 'Cong nghe'),
  (109, 'Le Van R', 'gv9@example.com', 'Sinh hoc'),
  (110, 'Pham Thi Q', 'gv10@example.com', 'Ngoai ngu');

-- Thêm dữ liệu mẫu vào bảng DangKyHocPhan
INSERT INTO DangKyHocPhan (MaSinhVien, MaLopHoc, NgayDangKy)
VALUES
  ('SV001', 1, '2023-09-01'),
  ('SV002', 2, '2023-09-02'),
  ('SV003', 3, '2023-09-03'),
  ('SV004', 4, '2023-09-04'),
  ('SV005', 5, '2023-09-05'),
  ('SV006', 6, '2023-09-06'),
  ('SV007', 7, '2023-09-07'),
  ('SV008', 8, '2023-09-08'),
  ('SV009', 9, '2023-09-09'),
  ('SV010', 10, '2023-09-10');