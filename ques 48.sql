SELECT u.user_id, u.user_name
FROM users u
LEFT JOIN logins l ON u.user_id = l.user_id
WHERE l.login_date NOT BETWEEN '2024-11-01' AND '2024-11-30'
ORDER BY u.user_id;
