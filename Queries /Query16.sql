-- Peak login days across regions?
SELECT viewer_id,login_date
FROM (
  SELECT viewer_id,login_date,
         ROW_NUMBER() OVER (PARTITION BY viewer_id ORDER BY login_date DESC) AS rn
  FROM ott.Logins
) AS ranked
WHERE rn = 1;
