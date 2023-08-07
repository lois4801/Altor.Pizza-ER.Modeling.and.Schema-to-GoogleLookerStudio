
/*
I added the rotation shift table and to be connected to both shift and staff
thus my foreign keys are shift_id and staff_id
*/

use altors_pizzeria;

Select
r.date,
st.first_name,
st.last_name,
st.hourly_rate

from rotationshift r 

left join staff st on r.staff_id=st.staff_id;

----------------------------------------------------------------------------
/* adding data from each shift-- START TIME and END TIME. 
Then left join the  rotation table and shift table */
Select
r.date,
st.first_name,
st.last_name,
st.hourly_rate,
sh.start_time,
sh.end_time

from rotationshift r 

left join staff st on r.staff_id=st.staff_id
left join shift sh on r.shift_id=sh.shift_id;
------------------------------------------------------------------------------
/*calculating the staff cost per row by using timediff
Turning the result into a total number of minutes and then dividing by 60 
to get into hours and then be multiplied by hourly rate */


Select
r.date,
st.first_name,
st.last_name,
st.hourly_rate,
sh.start_time,
sh.end_time,


  ( 
    HOUR(TIMEDIFF(sh.end_time, sh.start_time)) * 60 + -- no space after timediff
    MINUTE(TIMEDIFF(sh.end_time, sh.start_time)) -- Corrected alias from start_time to sh.start_time
  ) / 60 AS "hours_in_shift",


  ( 
    HOUR(TIMEDIFF(sh.end_time, sh.start_time)) * 60 + -- no space after timediff
    MINUTE(TIMEDIFF(sh.end_time, sh.start_time)) -- Corrected alias from start_time to sh.start_time
  ) / 60 * st.hourly_rate AS "staff_costs"

FROM rotationshift r 
LEFT JOIN staff st ON r.staff_id = st.staff_id
LEFT JOIN shift sh ON r.shift_id = sh.shift_id;















