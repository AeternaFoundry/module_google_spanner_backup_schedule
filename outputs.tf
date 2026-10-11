output "spanner_backup_schedules_id" {
  description = "Map of id values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no id are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spanner_backup_schedules_database" {
  description = "Map of database values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no database are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => v.database if v.database != null && length(v.database) > 0 }
}
output "spanner_backup_schedules_deletion_policy" {
  description = "Map of deletion_policy values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no deletion_policy are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "spanner_backup_schedules_encryption_config" {
  description = "Map of encryption_config values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no encryption_config are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => one(v.encryption_config) if v.encryption_config != null && length(v.encryption_config) > 0 }
}
output "spanner_backup_schedules_full_backup_spec" {
  description = "Map of full_backup_spec values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no full_backup_spec are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => one(v.full_backup_spec) if v.full_backup_spec != null && length(v.full_backup_spec) > 0 }
}
output "spanner_backup_schedules_incremental_backup_spec" {
  description = "Map of incremental_backup_spec values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no incremental_backup_spec are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => one(v.incremental_backup_spec) if v.incremental_backup_spec != null && length(v.incremental_backup_spec) > 0 }
}
output "spanner_backup_schedules_instance" {
  description = "Map of instance values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no instance are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "spanner_backup_schedules_name" {
  description = "Map of name values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no name are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "spanner_backup_schedules_project" {
  description = "Map of project values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no project are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => v.project if v.project != null && length(v.project) > 0 }
}
output "spanner_backup_schedules_retention_duration" {
  description = "Map of retention_duration values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no retention_duration are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => v.retention_duration if v.retention_duration != null && length(v.retention_duration) > 0 }
}
output "spanner_backup_schedules_spec" {
  description = "Map of spec values across all spanner_backup_schedules, keyed the same as var.spanner_backup_schedules except keys with no spec are omitted"
  value       = { for k, v in google_spanner_backup_schedule.spanner_backup_schedules : k => one(v.spec) if v.spec != null && length(v.spec) > 0 }
}

