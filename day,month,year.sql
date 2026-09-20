--day,month,year
--select day ('2023-08-25')...--->25,select month('2023-08-25')...--->08
--select year('2023-08-25')...--->2023
-- dữ liệu trong ngoặc có thể là date or datetime

--tính số lượng đơn đặt hàng trong năm 1997 của từng khách hàng
select [CustomerID],count([OrderID]) as "số lượng đơn đặt",year([OrderDate]) as năm
from[dbo].[Orders]
where year([OrderDate])=1997
group by [CustomerID],year([OrderDate]);

--select [CustomerID],count(year([OrderDate])) or count([OrderID]) as "số lượng đơn đặt"
--from[dbo].[Orders]
--where year([OrderDate])=1997
--group by [CustomerID];

--lọc ra các đơn hàng được đặt hàng vào tháng 5 năm 1997
select[OrderID],[OrderDate]
from[dbo].[Orders]
where year([OrderDate])=1997 and month([OrderDate])=5;
--lọc ra các đơn hàng được đặt hàng vào ngày 4 tháng 9 năm 1996
select[OrderID],[OrderDate]
from[dbo].[Orders]
where year([OrderDate])=1996 and month([OrderDate])=9 and day([OrderDate])=4;

--lấy danh sách khách hàng đặt hàng trong năm 1998 
--và số đơn hàng mỗi tháng sắp xếp tháng tăng dần
select[CustomerID],month([OrderDate]) as "số tháng tăng dần",
count([OrderID]) as "số đơn hàng"
from[dbo].[Orders]
where year([OrderDate])=1998
group by[CustomerID],month([OrderDate])
order by month([OrderDate]) asc;

--lọc các đơn đặt hàng đã được giao vào tháng 5 và 
--sắp xếp tăng dần theo năm
select[OrderID], [ShippedDate]
from[dbo].[Orders]
where month([ShippedDate])=5
order by year([ShippedDate]) asc;