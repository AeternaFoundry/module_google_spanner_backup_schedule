resource "google_spanner_backup_schedule" "spanner_backup_schedules" {
  for_each = var.spanner_backup_schedules

  database           = each.value.database
  instance           = each.value.instance
  retention_duration = each.value.retention_duration
  deletion_policy    = each.value.deletion_policy
  name               = each.value.name
  project            = each.value.project

  dynamic "encryption_config" {
    for_each = each.value.encryption_config != null ? [each.value.encryption_config] : []
    content {
      encryption_type = encryption_config.value.encryption_type
      kms_key_name    = encryption_config.value.kms_key_name
      kms_key_names   = encryption_config.value.kms_key_names
    }
  }

  dynamic "full_backup_spec" {
    for_each = each.value.full_backup_spec != null ? [each.value.full_backup_spec] : []
    content {
    }
  }

  dynamic "incremental_backup_spec" {
    for_each = each.value.incremental_backup_spec != null ? [each.value.incremental_backup_spec] : []
    content {
    }
  }

  dynamic "spec" {
    for_each = each.value.spec != null ? [each.value.spec] : []
    content {
      dynamic "cron_spec" {
        for_each = spec.value.cron_spec != null ? [spec.value.cron_spec] : []
        content {
          text = cron_spec.value.text
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

