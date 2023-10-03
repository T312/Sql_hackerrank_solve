SELECT 
     IF(G.Grade < 8 ,'NULL',S.Name), G.Grade, S.Marks
FROM 
    Students AS S
LEFT JOIN 
    Grades AS G ON (S.Marks BETWEEN G.Min_Mark AND G.Max_Mark)
ORDER BY 
    G.Grade DESC, S.Name
