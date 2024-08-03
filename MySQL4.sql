# Window Function:

use Record;
SELECT * FROM record.salary_record;

Select*,Rank() over(order by Salary Desc)
as "Skip Ranking"
from salary_record;

Select*,dense_rank() over(order by Salary Desc)
as "Dense Ranking"
from salary_record;

Select*,Row_number() over(order by Salary Desc)
as "Row Ranking"
from salary_record;

Select*,percent_Rank() over(order by Salary Desc)
as "Percentage Ranking"
from salary_record;

Select*,
Rank() over(order by Salary Desc) as "Skip Ranking",
dense_rank() over(order by Salary Desc) as "Dense Ranking",
Row_number() over(order by Salary Desc) as "Row Ranking",
percent_Rank() over(order by Salary Desc) as "Percentage Ranking"
from salary_record;


Select*,Rank() over(partition by state order by Salary Desc)
as "Skip Ranking"
from salary_record;

Select*,
Sum(Salary) over(partition by state order by state) as "Total Salary"
from salary_record;

Select*,
Max(Salary) over(partition by state order by state) as "Max Salary"
from salary_record;

Select*,
min(Salary) over(partition by state order by state) as "Min Salary"
from salary_record;

Select*,
avg(Salary) over(partition by state order by state) as "avg Salary"
from salary_record;

Select*,
Rank() over(partition by state order by Salary Desc) as "Skip Ranking",
Sum(Salary) over(partition by state order by State) as "Total Salary",
Max(Salary) over(partition by state order by State) as "Max Salary",
Min(Salary) over(partition by state order by State) as "Min Salary",
Avg(Salary) over(partition by state order by State Desc) as "Average Salary"
from salary_record;


select state,
count(*) as "NO. of Employee",
sum(Salary) as "Total Salary",
Max(Salary) as "Max Salary",
Min(Salary) as "Min Salary",
Avg(Salary) as "Avg Salary"
from Salary_Record
Group by State;

