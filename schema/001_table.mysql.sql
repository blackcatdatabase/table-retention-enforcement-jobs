-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  retention_enforcement_jobs

CREATE TABLE IF NOT EXISTS retention_enforcement_jobs (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  policy_id BIGINT UNSIGNED NOT NULL,
  scheduled_at DATETIME(6) NULL,
  started_at DATETIME(6) NULL,
  finished_at DATETIME(6) NULL,
  status ENUM('pending','running','done','failed','cancelled') NOT NULL DEFAULT 'pending',
  processed_count BIGINT UNSIGNED NOT NULL DEFAULT 0,
  error TEXT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  INDEX idx_rej_status_sched (status, scheduled_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
