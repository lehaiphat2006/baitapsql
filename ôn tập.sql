--ôn tập
--Hãy cho biết những khách hàng nào đã đặt nhiều hơn 20 đơn hàng,
--sắp xếp theo thứ tự tổng số đơn hàng giảm dần
select count([OrderID]) as"số lượng đơn"
,[CustomerID] as "khách hàng"
from[dbo].[Orders]
group by[CustomerID]
having count([OrderID])>20
order by count([OrderID]) desc;

--hãy lọc rá các nhân viên có tổng số đơn hàng lớn hơn hoặc 
--bằng 100 sắp xếp theo tổng số đơn hàng giảm dần
select [EmployeeID] as"nhân viên",
count([OrderID]) as"đơn hàng"
from[dbo].[Orders]
group by[EmployeeID]
having not count([OrderID]) <100
order by count([OrderID]) desc;

--hãy cho biết những thể loại nào có số sản phẩm khác nhau
--lớn hơn 11
select  [CategoryID]as" thể loại",
count([ProductID]) as"sản phảm"
from[dbo].[Products]
group by[CategoryID]
having count([ProductID]) >11;

--hãy cho biết những thể loại nào có số tổng số lượng
--sản phảm trong kho lớn hơn 350
select  [CategoryID]as" thể loại",
sum([UnitsInStock]) as"tổng sản phảm"
from[dbo].[Products]
group by[CategoryID]
having sum([UnitsInStock]) >350;
--cho biết nhứng quốc gia nào có nhiều hơn 7 khách hàng
select count([CustomerID]) as"khách hàng",
 [ShipCountry] as"quốc gia"
from[dbo].[Orders]
group by[ShipCountry]
having  count([CustomerID]) >7
--hãy cho biết những ngày nào có nhiều hơn 5 đơn hàng được giao 
--sắp xếp tăng dần theo ngày giao hàng
select count([OrderID]) as"đơn hàng",
[ShippedDate] as"ngày giao hàng"
from[dbo].[Orders]
group by [ShippedDate]
having   count([OrderID])>5
order by [ShippedDate] asc;

