-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  retention_enforcement_jobs
ALTER TABLE retention_enforcement_jobs ADD CONSTRAINT fk_rej_policy FOREIGN KEY (policy_id) REFERENCES data_retention_policies(id) ON DELETE CASCADE;
