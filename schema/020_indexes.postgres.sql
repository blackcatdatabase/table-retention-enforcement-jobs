-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  retention_enforcement_jobs
CREATE INDEX IF NOT EXISTS idx_rej_status_sched ON retention_enforcement_jobs (status, scheduled_at);
