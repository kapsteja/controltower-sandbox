# =============================================================================
# Controltower Sandbox — Managed by Sandbox Team
# Attachments ONLY — policy definitions live in the root workspace.
# =============================================================================

# Read policy IDs from the admin workspace (root)
data "terraform_remote_state" "policies" {
  backend = "remote"
  config = {
    organization = "marriott"
    workspaces = {
      name = "cf-aws-org-scp-v3"
    }
  }
}

locals {
  # "PolicyName.json" -> "p-xxxxx" from admin workspace
  policy_ids = data.terraform_remote_state.policies.outputs.policy_ids

  attachments_flat = {
    for pair in flatten([
      for policy_name, target_list in var.attachments : [
        for target in target_list : {
          key         = "${policy_name}_${target}"
          policy_file = "${policy_name}.json"
          target      = target
        }
      ]
    ]) : pair.key => pair
  }
}

resource "aws_organizations_policy_attachment" "attach" {
  for_each = local.attachments_flat

  policy_id = local.policy_ids[each.value.policy_file]
  target_id = each.value.target
}