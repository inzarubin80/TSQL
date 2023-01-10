SELECT
    *,
    CASE HR.Employees.titleofcourtesy 
WHEN  'мисс' THEN 'Женский'
WHEN  'мистер' THEN 'Мужской'
else  'не определено'
END as sex
FROM HR.Employees
