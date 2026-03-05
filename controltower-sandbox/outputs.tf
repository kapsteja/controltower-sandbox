output "attachment_ids" {
  description = "Map of attachment key to resource ID"
  value = {
    for k, v in aws_organizations_policy_attachment.attach : k => v.id
  }
}

output "attached_policies" {
  description = "Policy names attached in this sandbox"
  value       = distinct([for k, v in var.attachments : k])
}

output "attached_targets" {
  description = "All target IDs with attachments"
  value       = distinct(flatten([for k, v in var.attachments : v]))
}