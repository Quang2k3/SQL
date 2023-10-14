create database DKHocPhan;

create table SinhVien(
	MaSinhVien nvarchar(50) not null,
	HovaTen varchar(30) not null,
	Lop nvarchar(6) not null,
	NgaySinh nvarchar (10) not null,
	GioiTinh varchar (3) not null,
	DiaChi nvarchar (50) not null,
	SoDienThoai varchar (10),
	Email nvarchar (50),
	MaLopHoc int  not null,
	constraint pk_SinhVien primary key(MaSinhVien)
	)
	go
create table MonHoc(
	MaMonHoc nvarchar (6) not null,
	TenMonHoc nvarchar (10) not null,
	SoTinChi varchar(3) not null,
	constraint pk_MonHoc primary key(MaMonHoc)
	)
go
create table KetQuaHocTap(
	MaKetQua int primary key,
	MaSinhVien nvarchar(50) not null,
	MaMonHoc nvarchar (6) not null,
	DiemSo float (3) not null,
	
	)
go
create table LopHoc(
	MaLopHoc int primary key not null,
	TenLopHoc nvarchar (10) not null,
	MaMonHoc nvarchar (6) not null,
	MaGiangVien int not null,
	SoLuongSinhVien int not null,
	)
go
CREATE TABLE GiangVien (
    MaGiangVien INT PRIMARY KEY,
    TenGiangVien VARCHAR(255),
    Email VARCHAR(255),
    BoMon VARCHAR(255),
)
go
CREATE TABLE DangKyHocPhan (
    MaDangKy INT PRIMARY KEY,
    MaSinhVien nvarchar(50) not null,
    MaLopHoc int not null,
    NgayDangKy DATE
)
go
ALTER TABLE SinhVien
ALTER COLUMN MaLopHoc INT;
ALTER TABLE SinhVien
ADD CONSTRAINT FK_SinhVien_LopHoc FOREIGN KEY (MaLopHoc)
REFERENCES LopHoc(MaLopHoc);
ALTER TABLE LopHoc
ADD CONSTRAINT FK_LopHoc_MonHoc FOREIGN KEY (MaMonHoc)
REFERENCES MonHoc(MaMonHoc);
ALTER TABLE LopHoc
ADD CONSTRAINT FK_LopHoc_GiangVien FOREIGN KEY (MaGiangVien)
REFERENCES GiangVien(MaGiangVien);
ALTER TABLE DangKyHocPhan
ADD CONSTRAINT FK_DangKyHocPhan_SinhVien FOREIGN KEY (MaSinhVien)
REFERENCES SinhVien(MaSinhVien);
ALTER TABLE DangKyHocPhan
ADD CONSTRAINT FK_DangKyHocPhan_LopHoc FOREIGN KEY (MaLopHoc)
REFERENCES LopHoc(MaLopHoc);
ALTER TABLE KetQuaHocTap
ADD CONSTRAINT FK_KetQuaHocTap_SinhVien FOREIGN KEY (MaSinhVien)
REFERENCES SinhVien(MaSinhVien);
ALTER TABLE KetQuaHocTap
ADD CONSTRAINT FK_KetQuaHocTap_MonHoc FOREIGN KEY (MaMonHoc)
REFERENCES MonHoc(MaMonHoc);
SELECT *
FROM SinhVien
INNER JOIN LopHoc ON SinhVien.MaLopHoc = LopHoc.MaLopHoc;

SELECT *
FROM SinhVien
INNER JOIN LopHoc ON SinhVien.MaLopHoc = LopHoc.MaLopHoc
INNER JOIN MonHoc ON LopHoc.MaMonHoc = MonHoc.MaMonHoc;

SELECT *
FROM SinhVien
INNER JOIN LopHoc ON SinhVien.MaLopHoc = LopHoc.MaLopHoc
INNER JOIN GiangVien ON LopHoc.MaGiangVien = GiangVien.MaGiangVien;

SELECT *
FROM SinhVien
INNER JOIN DangKyHocPhan ON SinhVien.MaSinhVien = DangKyHocPhan.MaSinhVien;

SELECT *
FROM SinhVien
INNER JOIN KetQuaHocTap ON SinhVien.MaSinhVien = KetQuaHocTap.MaSinhVien;
select * from SinhVien
go