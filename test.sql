CREATE OR ALTER PROCEDURE dbo.magic AS
BEGIN
DECLARE @A INT
SET @A = 2
SELECT * FROM SYS.schemas WHERE @A = @A
SELECT * FROM SYS.tables
DECLARE @A VARCHAR(100)
SET @A = 'Running'
SELECT TOP (100) *
FROM [OMD].[SUBJOB_INSTANCES]
LEFT JOIN [OMD].[SUBJOB] ON [SUBJOB_INSTANCES].[SUBJOB_ID] = [SUBJOB].[SUBJOB_ID]
LEFT JOIN OMD.JOB J ON J.JOB_ID = SUBJOB.JOB_ID
--WHERE subjob.SUBJOB_CODE like 'dw_fact%' and SUBJOB_CODE = 'DW_FACT_FinanceJournalSnapshotLocal'
WHERE EXECUTION_STATUS_CODE = @A
ORDER BY [SUBJOB_INSTANCE_ID] DESC
END
