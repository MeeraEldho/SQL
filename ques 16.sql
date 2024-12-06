SELECT 
    NAME || '(' || SUBSTR(OCCUPATION, 1, 1) || ')' AS Result
FROM 
    OCCUPATIONS
ORDER BY 
    NAME;

SELECT 
    'There are a total of ' || COUNT(*) || ' ' || LOWER(OCCUPATION) || 's.' AS Result
FROM 
    OCCUPATIONS
GROUP BY 
    OCCUPATION
ORDER BY 
    COUNT(*), OCCUPATION;

