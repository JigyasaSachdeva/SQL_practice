use empsal;



Select firstname 
from
(Select TID, Employee.salary, firstname 
from ET join Employee 
on ET.EID = Employee.EID
where
(TID, Employee.Salary) IN
(Select TID, Max(salary) as Highest 
from 
(select firstname, salary, Employee.EID, TID from Employee inner join ET
on Employee.EID = ET.EID
where TID in ('10001', '28621', '34120') ) X
Group By TID)
) Y ;





Select TID, Employee.salary, firstname from ET join Employee 
on ET.EID = Employee.EID
where TID in ('10001', '28621', '34120')












