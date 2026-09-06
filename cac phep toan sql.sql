--tính số lượng hàng còn lại trong kho(UnitInStock) sau khi bán hết các sản phẩm đã được đặt hàng (UnitOnOrder)
select [ProductID],[ProductName],[UnitsInStock],[UnitsOnOrder],([UnitsInStock] -[UnitsOnOrder]) as "số Lượng hàng còn lại"
from [dbo].[Products];

--tính giá trị mặt hàng chi tiết cho tất cả các sản phẩm trong bảng Order Details
select[OrderID],[ProductID],([UnitPrice]*[Quantity]) as "giá trị mặt hàng"
from[dbo].[Order Details];

--tính tỷ lệ giá vận chuyển đơn đặt hàng (Freight) trung bình của các đơn đặt hàng trong 
--bảng Orders so với giá trị vận chuyển của đơn hàng lớn nhất (MaxFreight)
select(AVG([Freight])/Max([Freight])) as "tỷ lệ giá vận chuyển"
from[dbo].[Orders];

--liệt kê danh sách các sản phẩm và giá (UnitPrice)của từng sản phẩm sẽ 
-- được giảm đi 10%. Cách 1 dùng pép nhân + phép chia/Cách 2 chỉ được dùng phép nhân
--Cách 1:
select *,([UnitPrice]* 10 /100) as "giá trị khi giảm 10% cách 1",[UnitPrice]-([UnitPrice]* 10 /100) as "giá trị mới khi giảm 10%"
from[dbo].[Products];
--cách 2:
--select *,cast(round(([UnitPrice]* 0.1),2)as decimal(10,2)) as "giá trị khi giảm 10% cách 2",
--cast([UnitPrice]-round(([UnitPrice]* 0.1),2) as decimal(10,2)) as "giá trị mới khi giảm 10%"
--from[dbo].[Products];
--or
select *,convert( decimal(10,2),([UnitPrice]* 0.1)) as "giá trị khi giảm 10% cách 2",
convert(decimal(10,2),[UnitPrice]-round(([UnitPrice]* 0.1),2) ) as "giá trị mới khi giảm 10%"
from[dbo].[Products];
--round(cột tính toán ,số chữ số để giới hạn thập phân)-->làm tròn giá trị(không thay đổi kiểu dữ liệu)
--vd round (18.00*0.1,2)=1.80 nhưng Sql Server vẫn có kiểu dữ liệu decimsl (...,5) thì khi chạy trên màn hình sẽ hiện 5 số sau dấu phẩy mặc dù đã làm tròn .
--cast(cột tính toán as decimal(số chữ số tối đa để chứa,số chữ số để giới hạn thập phân))--->cái này dùng để ép kiểu dữ liệu hiển thị ra màn hình
-- or có thể dùng convert(decimal(...,...),cột tính toán)