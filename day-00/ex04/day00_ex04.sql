SELECT name || ' (age:'|| age|| ',gender:'|| '''' || person.gender || '''' || ',address:'||'''' || address||'''' || ')'  AS person_information FROM person
order by person_information ASC;