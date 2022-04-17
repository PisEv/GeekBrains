-- Скрипт по пользователю возвращает людей которые больше всего написали ему ссобщений
SELECT
    --   COUNT(*) AS 'Количество сообщений',
    m.from_user_id as 'id получателя',
        u.firstname as 'Имя получателя',
        u.lastname as 'Фамилия получателя',
        m.to_user_id as 'id отправителя',
        (SELECT firstname FROM users WHERE id = m.to_user_id) as 'Имя отправителя',
        (SELECT lastname  FROM users WHERE id = m.to_user_id) as 'Фамилия отправителя'
FROM messages m
         JOIN users u ON m.from_user_id = u.id
WHERE u.id = 5 -- выбрать id пользователя
GROUP BY from_user_id
ORDER BY COUNT(*) DESC
    LIMIT 1;

-- Общее количество лайков, которые получили пользователи младше 10 лет.
SELECT count(*) as 'Количество лайков у пользователей младше 10 лет'
from posts_likes
where user_id IN (SELECT user_id
                  from profiles
                  WHERE TIMESTAMPDIFF(YEAR, birthday, current_timestamp()) < 10);

-- Определить кто больше поставил лайков (всего): мужчины или женщины
SELECT
    CASE(sex)
        WHEN 'f' THEN 'Женщины'
        WHEN 'm' THEN 'Мужчины'
        END as Пол,
    count(*) as Количество
FROM (SELECT user_id as crt, (SELECT gender from profiles WHERE user_id = crt) as sex
      FROM posts_likes) as prepare_table
WHERE sex != 'x'
GROUP BY sex
ORDER BY COUNT(*) desc
    LIMIT 1
;