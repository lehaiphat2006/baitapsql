--WILDCARD
-- dấu % dùng để đại diện cho 0,1 or nhiều kí tự ví dụ LIKE 'fl%' thì nó sẽ tìm fl,flash,fly...
-- dấu _ dùng để đại diện cho 1 kí tự đơn ví dụ LIKE 'fl_' thì nó sẽ tìm fly,nhưng không tìm flash,fl...
-- dấu [] dùng để đại diện cho bất kì ký tự nào có trong ngoặc vd LIKE 'h[oa]t' thì nó sẽ tìm hot,hat,nhưng không có hit...(có thể , mỗi từ trong ngoặc để ngăn cách các từ)
-- dấu ^ dùng để đại diện cho bất kì ký tự nào không có trong ngoặc vd LIKE 'h[^oa]t' thì nó sẽ tìm hit,nhưng không có hot,hat
-- dấu - dùng để đại diện cho khoảng cách từ kí tự này đến kí tự khác trong ngoặc vd LIKE 'h[a-c]t' thì nó sẽ tìm hat,hbt,hct


--lọc ra tất cả khách hàng có tên liên hệ bắt đầu bằng chữ A
select *
from [dbo].[Customers] as c
where c.ContactName like 'a%';

--lọc  ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ H và có chữ thứ 2 là bất kì kí tự nào
select *
from [dbo].[Customers] as c
where c.ContactName like 'h_%';

--lọc ra tất cả các đơn hàng được gửi đến thành phố có chữ cái bắt đầu là L, chữ cái thứ hai là u hoặc o
select *
from [dbo].[Orders] as o
where o.ShipCity like 'l[u,o]%';

--lọc ra tất cả các đơn hàng được gửi đến thành phố có chữ cái bắt đầu là L, chữ cái thứ hai không là u hoặc o
select *
from [dbo].[Orders] as o
where o.ShipCity like 'l[^u,o]%';

--lọc ra tất cả các đơn hàng được gửi đến thành phố có chữ cái bắt đầu là L, chữ cái thứ hai là các kí tự từ a đến e
select *
from [dbo].[Orders] as o
where o.ShipCity like 'l[a-e]%';

--lấy tất cả các nhà cung cấp hàng có tên công ty bắt đầu bằng chữ a và không chứa ký tự b
select *
from [dbo].[Suppliers]as s
where s.CompanyName like 'a%' and s.CompanyName not like '%b%' ;
