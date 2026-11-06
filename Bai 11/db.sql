create database netflix;

-- phim
-- the_loai
-- dien_vien
-- dao_dien
-- tap_phim
-- nguoi_dung

--Table Người dùng (nguoi_dung)
CREATE TABLE nguoi_dung (
    id int AUTO_INCREMENT PRIMARY KEY ,
    ten_dang_nhap varchar(30) NOT NULL,
    mat_khau varchar(30) NOT NULL,
    email varchar(30) NOT NULL,
    ho_ten varchar(50) NOT NULL,
    ngay_sinh date NOT NULL,
    so_dien_thoai varchar(10) NOT NULL,
    gioi_tinh boolean  NOT NULL
)

-- the_loai
id key AUTO_INCREMENT int,
ten_the_loai varchar(255),

-- dien_vien
id key AUTO_INCREMENT int,
ho_ten varchar(100),
ngay_sinh date,

-- dao_dien
id key AUTO_INCREMENT int,
ho_ten varchar(100),
ngay_sinh date,

--phim
id key AUTO_INCREMENT int,
ten_phim varchar(255),
quoc_gia varchar(100),
dao_dien_id int,
nam datetime,
do_tuoi int,
mo_ta varchar(255)

--phim_the_loai
id key AUTO_INCREMENT int,
phim_id int,
the_loai_id int,

--phim_dien_vien
id key AUTO_INCREMENT int,
phim_id int,
dien_vien_id int

--dao dien
-- 1 câu lệnh chạy được nhiều lần IF NOT EXISTS 
-- SELECT * FROM `the_loai` WHERE tenTheLoai LIKE N"%tên vị trí muốn trỏ%" 
-- UPDATE `the_loai` SET `id`='[value-1]',`tenTheLoai`='[value-2]' WHERE 1

INSERT INTO `nguoi_dung`(`tenDangNhap`, `matKhau`, `email`, `hoTen`, `ngaySinh`, `soDienThoai`, `gioiTinh`) VALUES 
('nguyenvanan', 'User@123', 'nguyenvana@gmail.com',
'Nguyễn Văn An', '2002-03-15', '0901234567', 'Nam'),

('tranthibich', 'User@123', 'bichtran@gmail.com',
'Trần Thị Bích', '2003-07-20', '0912345678', 'Nữ'),

('lethanhdat', 'User@123', 'datle@gmail.com',
'Lê Thành Đạt', '2001-11-10', '0923456789', 'Nam'),

('phamminhduc', 'User@123', 'ducpham@gmail.com',
'Phạm Minh Đức', '2002-05-25', '0934567890', 'Nam'),

('hoangngocanh', 'User@123', 'anhhoang@gmail.com',
'Hoàng Ngọc Anh', '2004-09-08', '0945678901', 'Nữ');

-- join 2 bảng với nhau
SELECT * FROM 'phim' p
join 'dao_dien' dd
on p.dao_dien_id = dd.id
join 'phim_the_loai' ptl
on p.id = ptl.phim_id
JOIN the_loai tl
on ptl.the_loai_id = tl.id
where p.id = 1;