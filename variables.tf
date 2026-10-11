variable "spanner_backup_schedules" {
  description = <<EOT
Map of spanner_backup_schedules, attributes below
Required:
    - database
    - instance
    - retention_duration
Optional:
    - deletion_policy
    - name
    - project
    - encryption_config (block):
        - encryption_type (required)
        - kms_key_name (optional)
        - kms_key_names (optional)
    - full_backup_spec (block):
    - incremental_backup_spec (block):
    - spec (block):
        - cron_spec (optional, block):
            - text (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    database           = string
    instance           = string
    retention_duration = string
    deletion_policy    = optional(string)
    name               = optional(string)
    project            = optional(string)
    encryption_config = optional(object({
      encryption_type = string
      kms_key_name    = optional(string)
      kms_key_names   = optional(list(string))
    }))
    full_backup_spec = optional(object({
    }))
    incremental_backup_spec = optional(object({
    }))
    spec = optional(object({
      cron_spec = optional(object({
        text = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

