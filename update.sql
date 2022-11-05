-- Update user Mozu password
UPDATE users SET password = '123456' WHERE email = 'mozu@mail.com';

-- update user Mozu task with title Estudar
UPDATE tasks SET done = true WHERE user_id = (SELECT id FROM users WHERE email = 'mozu@mail.com') AND title='Estudar';
