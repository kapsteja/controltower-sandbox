# =============================================================================
# Variables — Controltower Sandbox (Attachments Only)
# =============================================================================

variable "attachments" {
  description = <<-EOT
    Map of SCP policy name (without .json) to list of sandbox target IDs.
    Policy names must match those created in the admin root workspace.
    Example:
      attachments = {
        "DenyPublicS3Buckets" = ["123456789012"]
      }
  EOT
  type    = map(list(string))
  default = {}
}

variable "account_id" {
  type    = string
  default = "648695786025"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "AAP_PUBLIC_KEY" {
  type    = string
  default = null
}

variable "AAP_TOKEN" {
  type      = string
  default   = null
  sensitive = true
}

variable "ANSIBLE_PUBLIC_KEY" {
  type    = string
  default = null
}

variable "JOB_TEMPLATE_ID" {
  type    = string
  default = null
}