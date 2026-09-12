create database CSDL_ban_hang_online
go
create table NhomSP(
MaNSP int primary key,
TenNSP Varchar(100)
);
CREATE TABLE LoaiSP (
    MaLSP INT PRIMARY KEY,
    TenLSP NVARCHAR(100)
);
CREATE TABLE DonViTinh (
    MaDVT INT PRIMARY KEY,
    TenDVT NVARCHAR(50)
);
CREATE TABLE SanPham (
    MaSP INT PRIMARY KEY,
    TenSP NVARCHAR(100),
    MoTaCT NVARCHAR(500),
    DonGia DECIMAL(18,2),
    AnhDG VARCHAR(255),
    MaLSP INT,
    MaDVT INT,
    FOREIGN KEY (MaLSP) REFERENCES LoaiSP(MaLSP),
    FOREIGN KEY (MaDVT) REFERENCES DonViTinh(MaDVT)
);