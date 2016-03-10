-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:02:55.32




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV char(10)  NOT NULL,
    TenNV nvarchar(200)  NOT NULL,
    NgaySinh datetime  NOT NULL,
    GioiTinh nchar(4)  NOT NULL,
    Email nchar(30)  NOT NULL,
    MucLuong int  NOT NULL,
    MaPhong char(10)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong char(10)  NOT NULL,
    Tenphong nvarchar(200)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (MaPhong)
    REFERENCES TPhongban (MaPhong)
;





-- End of file.

