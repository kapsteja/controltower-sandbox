variable "scp_files" {
  description = "List of SCP JSON files to deploy"
  type        = list(string)
}

variable "attachments" {
  description = "Map of SCP name to list of target IDs (OUs or accounts)"
  type        = map(list(string))
  default     = {}
}

variable "account_id" {
 type      = string
 default   = "648695786025"
}

variable "region" {
 type      = string
 default   = "us-east-1"
}
variable "AAP_PUBLIC_KEY" {
 type    = string
 default = null
}
variable "AAP_TOKEN" {
 type    = string
 default = null
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
variable "policy_extra_tags" {
 type    = map(map(string))
 default = {}
}
variable "policy_tags" {
 description = "Default tags to apply to all SCP policies"
 type = map(string)
 default = {
   ManagedBy = "Terraform"
 }
}
variable "policy_specific_tags" {
 description = "Map of policy name (without .json) to specific tags for that policy"
 type = map(map(string))
 default = {}
}
