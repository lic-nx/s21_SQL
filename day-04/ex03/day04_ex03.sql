SELECT v_generated_dates.days as missing_date from v_generated_dates
 where v_generated_dates.days not in (select visit_date from person_visits)
order by 1;