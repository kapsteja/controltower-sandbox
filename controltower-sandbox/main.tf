locals {
 enabled_policies = {
   for k, v in var.policy_definitions : k => v if v.enabled
 }
 attachment_pairs = flatten([
   for policy_name, targets in var.policy_attachments : [
     for t in targets : {
       policy_name = policy_name
       target_id   = t
     }
   ]
 ])
}
resource "aws_organizations_policy" "scp" {
 for_each    = local.enabled_policies
 name        = each.key
 description = each.value.description
 type        = "SERVICE_CONTROL_POLICY"
 content     = file("${path.module}/${each.value.content_file}")
}
resource "aws_organizations_policy_attachment" "attach" {
 for_each = {
   for i, p in local.attachment_pairs :
   "${p.policy_name}:${p.target_id}" => p
   if contains(keys(aws_organizations_policy.scp), p.policy_name)
 }
 policy_id = aws_organizations_policy.scp[each.value.policy_name].id
 target_id = each.value.target_id
}