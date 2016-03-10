-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:00:54.338




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV char(10)  NOT NULL,
    TenNV nvarchar(200)  NOT NULL,
    NgaySinh datetime  NOT NULL,
    GioiTinh int  NOT NULL,
    Email int  NOT NULL,
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

