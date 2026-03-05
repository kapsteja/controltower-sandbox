# Auto-generated variables
scp_files = [
  "test-rds-wip.json",
  "PCI-SCP-Prod-CT-Update-2.json",
  "Deny-RDS-DocDB-Without-Tags-CT.json",
  "block-iam-user-console-Deny-RDS-DocDB-Without-Tags-CT.json",
  "Deny-EC2-ELB-mi-portal.json",
  "Please_Do_Not_Touch_This_-Merged_SCP_Testing.json",
  "Deny-EC2-VOL-ELB-RDS-SNAPSHOTS-Without-Tags-CT-OCP.json",
  "DenyPublicS3Buckets.json",
  "Deny-RDS-snapshots-Without-Tags-CT.json",
  "DenyMarketplaceAccessToAcceptOffers.json",
  "Test-dynatrace-role.json",
  "DenyStnoTagUpdates.json",
  "DenyTGWRouteTableChanges.json",
  "TEST-exception-Deny-EC2-VOL-ELB-SNAPSHOTS-Without-Tags-CT.json",
  "Please_Do_Not_Touch_This-_SCP_Encryption_Baseline.json",
  "EBS_Enforce_encryption_DR_Recovery.json",
  "EBS_Enforce_encryption_DR.json",
  "AllowOAMActions.json",
  "Deny-marrcloud-permission-mgmt.json",
  "DenyDMZRunInstances.json",
  "PII-SCP-Prod-CT.json",
  "TEST-block-iam-user-console-Deny-RDS-DocDB-Without-Tags-CT.json",
  "PCI-SCP-Prod-CT-Update-1.json",
  "Terraformscp.json",
  "block-iam-user-console-access.json",
  "Enforce-EBS-Encryption.json",
  "Restrict-CSAO.json",
  "Please_Do_not_touch_-_Merged_Encryption_DR.json",
  "Deny-Lambda-Without-Code-Signing-Config-CT-Test.json",
  "123456Test_MergedTagEnforcement.json",
  "Deny-EC2-VOL-ELB-RDS-Snapshots-Without-Tags-Legacy.json",
  "DenyLambdaCreationWithoutSignerprofile.json",
  "block-console-access-test.json",
  "DenyEc2withoutTags.json",
  "Deny-RDSSNAPSHOTS-Without-Tags-CT-WIP.json",
  "DR-WIP.json",
"test-scp-pipeline.json",
]
# Default tags for production
policy_tags = {
 environment = "prod"
 managedBy   = "Terraform"
}
policy_extra_tags = {}
policy_specific_tags = {}

# Auto-generated attachments map
attachments = {
 DenyMarketplaceAccessToAcceptOffers = [
   "007710834192",
   "339712829092"
 ]
 DenySnoTagUpdates = [
   "007710834192"
 ]
 Please_Do_not_touch_-_Merged_Encryption_DR = [
   "007710834192"
 ]
 Deny-EC2-VOL-ELB-RDS-SNAPSHOTS-Without-Tags-CT-OCP = [
   "339712829092"
 ]
}