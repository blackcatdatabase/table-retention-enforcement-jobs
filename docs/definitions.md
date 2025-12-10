# retention_enforcement_jobs

Runs of data-retention enforcement tasks.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| policy_id | BIGINT | NO |  | Retention policy being enforced (FK data_retention_policies.id). |
| scheduled_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Scheduled start time. |
| started_at | DATETIME(6) | YES |  | Execution start timestamp. |
| finished_at | DATETIME(6) | YES |  | Execution completion timestamp. |
| status | mysql: ENUM('pending','running','done','failed','cancelled') / postgres: TEXT | NO | pending | Job status. (enum: pending, running, done, failed, cancelled) |
| processed_count | BIGINT | NO | 0 | How many rows were processed. |
| error | TEXT | YES |  | Failure details, if any. |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rej_status_sched | status,scheduled_at | INDEX idx_rej_status_sched (status, scheduled_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rej_policy | policy_id | data_retention_policies(id) | ON DELETE CASCADE |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_rej_status_sched | status,scheduled_at | CREATE INDEX IF NOT EXISTS idx_rej_status_sched ON retention_enforcement_jobs (status, scheduled_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_rej_policy | policy_id | data_retention_policies(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_retention_enforcement_jobs | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_retention_enforcement_jobs | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
