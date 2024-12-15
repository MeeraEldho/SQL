WITH OverlappingRanges AS (
    SELECT 
        a.employee_id AS emp1_id,
        b.employee_id AS emp2_id,
        a.start_date AS emp1_start,
        a.end_date AS emp1_end,
        b.start_date AS emp2_start,
        b.end_date AS emp2_end
    FROM schedules a
    JOIN schedules b 
        ON a.employee_id != b.employee_id
        AND a.start_date <= b.end_date
        AND a.end_date >= b.start_date
)
SELECT DISTINCT emp1_id, emp2_id, emp1_start, emp1_end, emp2_start, emp2_end
FROM OverlappingRanges
ORDER BY emp1_id, emp2_id;
