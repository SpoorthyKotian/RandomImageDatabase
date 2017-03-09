
---SQL2
USE [exercise-test]
GO 

BEGIN TRANSACTION
DECLARE @Label int = 151
INSERT INTO Users_Labels
(EntityId, LabelId)
SELECT UserId, @Label
FROM JobSeekers
WHERE LEN(ExternalId) > 10
AND IsProvisioned = 1
AND AcceptedTermsDate IS NOT NULL
AND UserId NOT IN (SELECT EntityId FROM Users_Labels  WHERE LabelId=@Label);
COMMIT TRANSACTION;