use center_for_literacy;


Select CID, max(A) from
(Select CID, Orders.OID, A
from Orders Join 
(select OID, sum(Qty*UnitPrice) as A
from OrderDetails
Group by OID) as X
on Orders.OID = X.OID) as Y
group by CID;


Select OID from
(Select OID, sum(Qty*UnitPrice) as A
from
(Select *
from OrderDetails 
where OID in
(Select OID from Orders
where CID = 30)) as X
group by OID
order by A desc
limit 1) as Y;










