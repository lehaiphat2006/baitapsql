-- GROUP BY
--hãy cho biets mỗi khách hàng đã đặt bao nhiêu đơn hàng
select[CustomerID],count([OrderID]) as "tổng đơn hàng"
from [dbo].[Orders]
group by [CustomerID];
--tính giá trị đơn giá trung bình theo mỗi nhà cung cấp sản phẩm
select [SupplierID] ,avg([UnitPrice]) as "trung bình đơn giá"
from[dbo].[Products]
group by [SupplierID];
--cho biết mỗi thể loại có tổng số bao nhiêu sản phẩm trong kho
select[CategoryID],sum([UnitsInStock]) as"tổng sản phẩm"
from[dbo].[Products]
group by[CategoryID]
--hãy cho biết giá vận chuyển thấp nhất và lớn nhất
--của các đơn hàng theo từng thành phố và quốc gia khác nhau
select [ShipCountry],[ShipCity],min([Freight]) as "giá vận chuyển thấp nhất",max([Freight]) as "giá vận chuyển lớn nhất"
from [dbo].[Orders]
group by[ShipCountry],[ShipCity]
order by [ShipCountry] asc , [ShipCity] asc;
