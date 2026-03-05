output "sandbox_ou_id" {
 value = var.sandbox_ou_id
}
output "managed_policies" { 
    value = keys(aws_organizations_policy.scp)
}