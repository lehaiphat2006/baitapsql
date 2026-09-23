--having
--hãy cho biết những khách hàng nào đã đặt nhiều hơn 20 đơn hàng 
--sắp xếp theo thứ tự tổng số đơn hàng giảm dần
select[CustomerID],count([OrderID]) as "số lượng đặt hàng"
from[dbo].[Orders]
group by[CustomerID]
having count([OrderID])>20
order by count([OrderID]) desc;

--hãy lọc ra những nhà cung cấp sản phẩm có tổng số lượng hàng trong kho lớn hơn 30
--có trung bình đơn giá có giá trị dưới 50
select [SupplierID],sum([UnitsInStock]) as "tổng số lượng hàng"
,avg([UnitPrice]) as"trung bình giá"
from[dbo].[Products]
group by[SupplierID]
having sum([UnitsInStock])>30 and avg([UnitPrice])<50;

--hãy cho biết tổng số tiền vận chuyển của từng tháng trong nữa năm sau 
--của năm 1996 sắp xếp theo tháng tăng dần
--tổng tiền vạn chuyển lớn hơn 1000
select month([ShippedDate]) as "những tháng sau nữa năm"
,sum([Freight]) as "tổng tiền vạn chuyển"
from[dbo].[Orders]
where [ShippedDate] between '1996-07-01' and '1996-12-31'
group by month([ShippedDate])
having sum([Freight])>1000
order by month([ShippedDate]) asc;
