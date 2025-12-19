-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
-- engine: mysql
-- table:  retention_enforcement_jobs

-- Contract view for [retention_enforcement_jobs]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_retention_enforcement_jobs AS
SELECT
  id,
  policy_id,
  scheduled_at,
  started_at,
  finished_at,
  status,
  processed_count,
  error,
  created_at
FROM retention_enforcement_jobs;
