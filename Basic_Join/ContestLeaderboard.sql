SELECT 
    a.hacker_id, a.name, t1.sumScore
FROM (
    Select hacker_id, sum(maxScore) as sumScore
    from (
        select  hacker_id, max(score) as maxScore
        from submissions 
        group by  hacker_id, challenge_id
    ) t
    group by hacker_id
) t1
INNER JOIN 
    Hackers as a
ON  a.hacker_id = t1.hacker_id
WHERE 
    t1.sumScore <> 0
ORDER BY
    t1.sumScore desc, hacker_id;
