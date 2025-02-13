
with bike as
(SELECT * FROM bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1)

select *, riders*price as revenue, riders*price - COGS as profit 
from bike
left join cost_table 
on bike.yr=cost_table.yr