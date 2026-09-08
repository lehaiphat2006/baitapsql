--liệt kê tất cả sản phẩm có số lượng trong kho thuộc khoảng nhỏ hơn 50 or lớn hơn 100\
select *
from[dbo].[Products] as p
where p.UnitsInStock<50 or p.UnitsInStock>100;

--liệt kê đơn hàng được giao đến Brazil giao muộn
select*
from[dbo].[Orders] as o
where o.RequiredDate<o.ShippedDate and o.ShipCountry like '%brazil%';

--lấy sản phẩm giá dưới 100 và mã sp khác 1
--select*
--from[dbo].[Products] as p
--where p.UnitPrice<100 and not p.CategoryID=1;
select*
from[dbo].[Products] as p
where not(p.UnitPrice>=100 or p.CategoryID=1);

--lấy danh sách các sản phẩm có giá bán từ 10 đến 20 đola
select*
from[dbo].[Products] as p
where p.UnitPrice between 10 and 20;

--lấy danh sách các đơn đặt hàng từ ngày 1996-07-01 đến 1996-07-31
select*
from[dbo].[Orders] as o
where o.OrderDate between '1996-07-01' and '1996-07-31';

--tính tổng số tiền vận chuyển freight các đơn đặt hàng từ ngày 1996-07-01 đến 1996-07-31
select sum(o.freight) as "tổng số tiền"
from[dbo].[Orders] as o
where o.OrderDate between '1996-07-01' and '1996-07-31';

--Lấy danh sách các đơn đặt hàng có ngày đặt hàng trong khoảng từ ngay 1/1/1997 đến ngày 31/12/1997
--và được vận chuyển bằng đường tày thủy  (Shipvia =3)
Select*
From [dbo].[Orders]
Where [ShipVia] = 3 And [OrderDate] Between '1997-1-1' and '1997-12-31'; 