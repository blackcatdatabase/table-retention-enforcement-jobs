-- Auto-generated from schema-map-postgres.yaml (map@94ebe6c)
-- engine: postgres
-- table:  retention_enforcement_jobs

ALTER TABLE retention_enforcement_jobs ADD CONSTRAINT fk_rej_policy FOREIGN KEY (policy_id) REFERENCES data_retention_policies(id) ON DELETE CASCADE;
