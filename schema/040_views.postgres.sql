-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  retention_enforcement_jobs

-- Contract view for [retention_enforcement_jobs]
CREATE OR REPLACE VIEW vw_retention_enforcement_jobs AS
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
