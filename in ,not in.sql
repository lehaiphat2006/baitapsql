--IN,NOT IN
--IN cho phép tìm các giá trị có trong column  structure : where column-name IN (value1,value2...); (ý nghĩa tương tự như OR)
-- NOT IN ngược lại cho phép tìm các giá trị khác với các giá trị đã chỉ định trong column


--hãy lọc đơn ra tất cả các đơn hàng với điều kiện
-- a. Đơn hàng được giao đến Germany,UK,Brazil
--b. Đơn hàng được giao đến các quốc gia khác Germany,UK,Brazil
--a
select o.ShipCountry
from[dbo].[Orders] as o
where o.ShipCountry  IN ('Germany','UK','Brazil');
--b
select o.ShipCountry
from[dbo].[Orders] as o
where o.ShipCountry NOT IN ('Germany','UK','Brazil');

--lấy ra các sản phảm có mã thể loại khác với 2,3,4
select *
from[dbo].[Products] as p
where p.CategoryID NOT IN (2,3,4);

--liệt kê các nhân viên không phải là nữ từ bảng nhân viên
--liệt kê các nhân viên là nữ từ bảng nhân viên

select *
from [dbo].[Employees]as e
where e.TitleOfCourtesy NOT IN ('Ms.','Mrs.');

select *
from [dbo].[Employees]as e
where e.TitleOfCourtesy  IN ('Mrs.','Ms.');

--lấy tất cả các khách hàng đến từ các thành phố sau Berlin,London,Warszawa
select *
from[dbo].[Customers] as c
where c.City  IN ('Berlin','London','Warszawa');