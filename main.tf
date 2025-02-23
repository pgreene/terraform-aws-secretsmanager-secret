resource "aws_secretsmanager_secret" "general" {
  name = var.name
  description = var.description
  kms_key_id = var.kms_key_id
  recovery_window_in_days = var.recovery_window_in_days
  policy = var.policy
  force_overwrite_replica_secret = var.force_overwrite_replica_secret
  tags = var.tags

  dynamic "replica" {
    for_each = var.replica
    content {
      kms_key_id = try(replica.value.kms_key_id, null)
      region = try(replica.value.region, replica.key)
    }
  }
}