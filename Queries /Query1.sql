-- Which viewers have not logged in in the past 3 months?
SELECT viewer_id
FROM (
  SELECT viewer_id,
         MAX(DATE(login_date)) AS last_login_date
  FROM `ott.Logins`
  GROUP BY viewer_id
) AS last_logins
WHERE last_login_date < DATE_SUB(DATE('2024-03-31'), INTERVAL 3 MONTH);
