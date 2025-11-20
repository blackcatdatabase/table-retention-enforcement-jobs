-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  retention_enforcement_jobs
ALTER TABLE retention_enforcement_jobs ADD CONSTRAINT fk_rej_policy FOREIGN KEY (policy_id) REFERENCES data_retention_policies(id) ON DELETE CASCADE;
