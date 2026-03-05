output "tag_scp_id" {
 value = aws_organizations_policy.tagging.id
}

# Expose policy IDs for downstream workspaces (e.g. controltower-sandbox)
output "policy_ids" {
  description = "Map of SCP policy filename to AWS policy ID"
  value = {
    for k, v in aws_organizations_policy.scp : k => v.id
  }
}

output "policy_ids_by_name" {
  description = "Map of SCP policy name (without .json) to AWS policy ID"
  value = {
    for k, v in aws_organizations_policy.scp : replace(k, ".json", "") => v.id
  }
}