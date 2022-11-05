SELECT * FROM users;

--select user by email and password
SELECT * FROM users u WHERE u.email = 'moalr@mail.com' AND u.password = 'hbKLBYo0';

--select all tasks user by email
SELECT u.name, t.* FROM tasks t
INNER JOIN users u
ON t.user_id = u.id
WHERE u.email = 'moalr@mail.com';

-- select task by id
SELECT t.* FROM tasks t WHERE t.id='';
