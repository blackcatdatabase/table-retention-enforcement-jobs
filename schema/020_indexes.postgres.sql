-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  retention_enforcement_jobs

CREATE INDEX IF NOT EXISTS idx_rej_status_sched ON retention_enforcement_jobs (status, scheduled_at);
