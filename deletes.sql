DELETE FROM tasks WHERE user_id = '';

DELETE FROM tasks WHERE user_id = (SELECT id FROM users WHERE email = 'mozu@mail.com');

TRUNCATE TABLE users CASCADE;
TRUNCATE TABLE tasks;

DROP TABLE tasks;
DROP TABLE users;
