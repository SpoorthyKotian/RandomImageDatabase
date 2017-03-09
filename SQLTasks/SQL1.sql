
---SQL1
USE [exercise-test]
GO

SELECT CONCAT(Firstname,' ', LastName) AS Name, COUNT(Users_AccessLog.UserId) as CountOfLogins
FROM JobSeekers
LEFT JOIN Users_AccessLog ON Users_AccessLog.UserId = JobSeekers.UserId
WHERE SWITCHOFFSET(LoginDate, '+10:00') >= '2015-07-01 00:00:00.000' AND SWITCHOFFSET(LoginDate, '+10:00') <= '2015-07-31 23:59:59.999'
GROUP BY JobSeekers.UserId, Firstname,LastName
HAVING(COUNT(Users_AccessLog.UserId)) > 0
ORDER BY CountOfLogins DESC;
