go 
use DKHocPhan
-- Lấy thông tin tất cả sinh viên
SELECT * FROM SinhVien;

-- Lấy thông tin về môn học có mã môn học là "MH001"
SELECT * FROM MonHoc WHERE MaMonHoc = 'MH001';

-- Lấy danh sách các môn học có Số Tín chỉ lớn hơn hoặc bằng 3
SELECT * FROM MonHoc WHERE SoTinChi >= 3;

-- Lấy thông tin về tất cả các lớp học và tên giảng viên tương ứng
SELECT LopHoc.*, GiangVien.TenGiangVien
FROM LopHoc
JOIN GiangVien ON LopHoc.MaGiangVien = GiangVien.MaGiangVien;

-- Lấy thông tin về tất cả các lớp học và số lượng sinh viên đã đăng kí trong mỗi lớp
SELECT LopHoc.*, COUNT(DangKyHocPhan.MaSinhVien) AS SoLuongSinhVien
FROM LopHoc
LEFT JOIN DangKyHocPhan ON LopHoc.MaLopHoc = DangKyHocPhan.MaLopHoc
GROUP BY LopHoc.MaLopHoc, LopHoc.TenLopHoc, LopHoc.MaMonHoc, LopHoc.MaGiangVien, LopHoc.SoLuongSinhVien;

-- Lấy thông tin về tất cả các sinh viên và điểm số trong bảng kết quả học tập
SELECT SinhVien.HovaTen, MonHoc.TenMonHoc, KetQuaHocTap.DiemSo
FROM KetQuaHocTap
JOIN SinhVien ON KetQuaHocTap.MaSinhVien = SinhVien.MaSinhVien
JOIN MonHoc ON KetQuaHocTap.MaMonHoc = MonHoc.MaMonHoc;

-- Lấy thông tin về các sinh vên có tên bắt đầu bằng Nguyen
SELECT * FROM SinhVien WHERE HovaTen LIKE 'Nguyen%';

-- Lấy danh sách các lớp học được dạy bởi giảng viên có mã giảng viên là 101
SELECT * FROM LopHoc WHERE MaGiangVien = 101;

-- Lấy thông tin về việc đăng kí của sinh viên có mã sinh viên là SV001
SELECT DangKyHocPhan.*, LopHoc.TenLopHoc, MonHoc.TenMonHoc
FROM DangKyHocPhan
JOIN LopHoc ON DangKyHocPhan.MaLopHoc = LopHoc.MaLopHoc
JOIN MonHoc ON LopHoc.MaMonHoc = MonHoc.MaMonHoc
WHERE DangKyHocPhan.MaSinhVien = 'SV001';

-- Lấy tổng số tín chỉ đã đăng kí bởi sinh viên có mã sinh viên là SV001
SELECT SUM(MonHoc.SoTinChi) AS TongTinChiDaDangKy
FROM DangKyHocPhan
JOIN LopHoc ON DangKyHocPhan.MaLopHoc = LopHoc.MaLopHoc
JOIN MonHoc ON LopHoc.MaMonHoc = MonHoc.MaMonHoc
WHERE DangKyHocPhan.MaSinhVien = 'SV001';

-- Lấy thông tin về sinh viên có số điện thoại bắt đầu từ 123
SELECT * FROM SinhVien WHERE SoDienThoai LIKE '123%';

-- Lấy danh sách các lớp có số lượng sinh viên đăng kí ít hơn 25
SELECT * FROM LopHoc WHERE SoLuongSinhVien < 25;

-- Lấy danh sách tất cả các lớp học mà sinh viên SV001 đã đăng kí
SELECT LopHoc.*
FROM LopHoc
JOIN DangKyHocPhan ON LopHoc.MaLopHoc = DangKyHocPhan.MaLopHoc
WHERE DangKyHocPhan.MaSinhVien = 'SV001';

-- Lấy thông tin về các môn học mà sinh viên SV001 đã đăng kí 
SELECT MonHoc.*
FROM MonHoc
JOIN KetQuaHocTap ON MonHoc.MaMonHoc = KetQuaHocTap.MaMonHoc
WHERE KetQuaHocTap.MaSinhVien = 'SV001';

-- Lấy danh sách tất cả các lớp học chưa có sinh viên nào đăng kí
SELECT LopHoc.*
FROM LopHoc
LEFT JOIN DangKyHocPhan ON LopHoc.MaLopHoc = DangKyHocPhan.MaLopHoc
WHERE DangKyHocPhan.MaSinhVien IS NULL;

-- Lấy danh sách các môn học và số lượng sinh viên đã đăng ký môn học đó:
SELECT MonHoc.TenMonHoc, COUNT(DangKyHocPhan.MaSinhVien) AS SoLuongSinhVien
FROM MonHoc
LEFT JOIN LopHoc ON MonHoc.MaMonHoc = LopHoc.MaMonHoc
LEFT JOIN DangKyHocPhan ON LopHoc.MaLopHoc = DangKyHocPhan.MaLopHoc
GROUP BY MonHoc.MaMonHoc, MonHoc.TenMonHoc;

-- Lấy danh sách các giảng viên và số lượng lớp học mà họ đảm nhiệm:
SELECT GiangVien.TenGiangVien, COUNT(LopHoc.MaLopHoc) AS SoLuongLopHoc
FROM GiangVien
LEFT JOIN LopHoc ON GiangVien.MaGiangVien = LopHoc.MaGiangVien
GROUP BY GiangVien.MaGiangVien, GiangVien.TenGiangVien;

-- Lấy danh sách các sinh viên và số lượng môn học mà họ đã đăng ký:
SELECT SinhVien.HovaTen, COUNT(KetQuaHocTap.MaMonHoc) AS SoLuongMonHocDaDangKy
FROM SinhVien
LEFT JOIN KetQuaHocTap ON SinhVien.MaSinhVien = KetQuaHocTap.MaSinhVien
GROUP BY SinhVien.MaSinhVien, SinhVien.HovaTen;

-- Lấy thông tin về sinh viên có email kết thúc bằng '@example.com':
SELECT * FROM SinhVien WHERE Email LIKE '%@example.com';

-- Lấy danh sách các môn học mà sinh viên 'SV001' đã đăng ký và có điểm số lớn hơn hoặc bằng 5:
SELECT MonHoc.TenMonHoc, KetQuaHocTap.DiemSo
FROM MonHoc
JOIN KetQuaHocTap ON MonHoc.MaMonHoc = KetQuaHocTap.MaMonHoc
WHERE KetQuaHocTap.MaSinhVien = 'SV001' AND KetQuaHocTap.DiemSo >= 5.0;
