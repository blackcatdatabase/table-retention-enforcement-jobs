<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – retention_enforcement_jobs

Runs of data-retention enforcement tasks.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| policy_id | BIGINT | NO | — | Retention policy being enforced (FK data_retention_policies.id). |  |
| scheduled_at | TIMESTAMPTZ(6) | YES | — | Scheduled start time. |  |
| started_at | TIMESTAMPTZ(6) | YES | — | Execution start timestamp. |  |
| finished_at | TIMESTAMPTZ(6) | YES | — | Execution completion timestamp. |  |
| status | TEXT | NO | 'pending' | Job status. | enum: pending, running, done, failed, cancelled |
| processed_count | BIGINT | NO | 0 | How many rows were processed. |  |
| error | TEXT | YES | — | Failure details, if any. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |