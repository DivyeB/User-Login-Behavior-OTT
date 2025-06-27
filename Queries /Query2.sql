-- What's the DAU (Daily Active Users) trend?
SELECT DATE(login_date) AS login_day,
       COUNT(DISTINCT viewer_id) AS Daily_Active_Users
FROM `ott.Logins`
GROUP BY login_day
ORDER BY login_day;
