--Find names of all female persons older than 25 and order the result by name. The sample of output is presented below.

SELECT name from person
where age > 25 and gender='female'
order by name;
