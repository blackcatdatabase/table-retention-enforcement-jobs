-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
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
