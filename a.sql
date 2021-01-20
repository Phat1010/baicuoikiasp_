create database QLVLXD
use QLVLXD

create table loaihang(
manhomhang nvarchar(50) primary key,
tennhomhang nvarchar(50),

 
)

create table danhmuc(
manhomhang nvarchar(50),
mahang nvarchar(50) primary key,
tenhang nvarchar(50),
soluong int,
donvitinh nvarchar(50),
gia int

)
create table account(
makh nvarchar(50) primary key,
matkhau nvarchar(50)
)
select * from account

create table hoadon (
mahd nvarchar(50) primary key,
ngayxuathd datetime ,
makh nvarchar(50)

)
create table chitiethoadon(
mahd nvarchar(50),
mahang  nvarchar(50),
tenhang  nvarchar(50),
soluong  int,
donvitinh  nvarchar(50),
traphi bit,
tongtien int
)


alter table danhmuc add constraint fk_1 foreign key (manhomhang) references loaihang(manhomhang)
alter table chitiethoadon add constraint fk_2 foreign key (mahd) references hoadon(mahd)
alter table chitiethoadon add constraint fk_3 foreign key (mahang) references danhmuc(mahang)


insert into hoadon values ('acc','11/12/2020 12:12:00','phat')
insert into chitiethoadon values('acc','g2','kẹo',5,'cái',1,12)

select  makh,chitiethoadon.mahd,   ngayxuathd, mahang,tenhang, soluong, donvitinh, traphi, tongtien   from hoadon,chitiethoadon   where hoadon.mahd=chitiethoadon.mahd
select  * from hoadon
select * from chitiethoadon

select count(mahd) from hoadon
select count(mahd) from chitiethoadon

insert into loaihang values('VLXD',N'Vật liệu xây dựng')

insert into loaihang values('NT',N'Nội thất bên trong')


insert into danhmuc values('VLXD','G2',N'Gạch 2 lỗ',50,N'Viên',2000)
insert into danhmuc values('VLXD','G6',N'Gạch 6 lỗ',50,N'Viên',3000)
select * from danhmuc
	

insert into danhmuc values('VLXD','SAND',N'Cát tô',20,N'Xe',200000)

insert into danhmuc values('VLXD','ROCK',N'Đá chẻ',70,N'Viên',5000)
insert into danhmuc values('NT','TABLE',N'Bàn ghế gỗ',5,N'bộ',600000)

insert into danhmuc values('NT','Tu',N'Tủ gỗ',5,N'bộ',10000000)



update danhmuc set soluong = 20 where mahang = 'TABLE'
update danhmuc set soluong = 20 where mahang = 'SAND'
select * from danhmuc where mahang='table'
select * from danhmuc

update danhmuc set soluong = 20, gia=2000  where mahang = 'G2'
select * from chitiethoadon
select * from danhmuc
select soluong from danhmuc where mahang='table'









select * from danhmuc

select * from account






