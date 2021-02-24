use empsal;

Select Cname from Customer
where CID IN
(Select CID from
(Select CID, Count(OID) as c
from Orders 
group by CID
order by c desc
limit 1) As X);