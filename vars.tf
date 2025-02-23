variable "tags" {
  description = "A map of tags to add to all resources"
  type = map(string)
  default = null #{}
}

variable "description" {
  description = "A description of the secret"
  type = string
  default = null
}

variable "force_overwrite_replica_secret" {
  description = "Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region"
  type = bool
  default = null
}

variable "kms_key_id" {
  description = "ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you need to reference a CMK in a different account, you can use only the key ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named `aws/secretsmanager`"
  type = string
  default = null
}

variable "name" {
  description = "Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: `/_+=.@-`"
  type = string
  default = null
}

variable "name_prefix" {
  description = "Creates a unique name beginning with the specified prefix"
  type = string
  default = null
}

variable "recovery_window_in_days" {
  description = "Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be `0` to force deletion without recovery or range from `7` to `30` days. The default value is `30`"
  type = number
  default = null
}

variable "replica" {
  description = "Configuration block to support secret replication"
  type = map(any)
  default = null #{}
}

variable "policy" {
  description = "The JSON policy document that is attached to the secret"
  default = null
}