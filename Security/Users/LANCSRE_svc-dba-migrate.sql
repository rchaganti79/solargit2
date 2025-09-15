IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'LANCSRE\svc-dba-migrate')
CREATE LOGIN [LANCSRE\svc-dba-migrate] FROM WINDOWS
GO
CREATE USER [LANCSRE\svc-dba-migrate] FOR LOGIN [LANCSRE\svc-dba-migrate]
GO
GRANT VIEW DATABASE STATE TO [LANCSRE\svc-dba-migrate]
