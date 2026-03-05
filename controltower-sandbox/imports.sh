#!/bin/bash
# =============================================================================
# Import existing SCP attachments into the Sandbox TFC workspace
# Workspace: cf-aws-org-Agrp-sandbox
#
# These attachments currently exist in AWS and were previously managed by the
# admin root workspace (cf-aws-org-scp-v3). After importing here, they must
# be REMOVED from the admin state to avoid dual management.
#
# Usage:
#   cd controltower-sandbox
#   terraform init
#   bash imports.sh
#   terraform plan -var-file=terraform.tfvars
# =============================================================================

set -euo pipefail

echo "=== Importing sandbox SCP attachments ==="

# --- DenyMarketplaceAccessToAcceptOffers (p-7tgph3lx) ---
terraform import 'aws_organizations_policy_attachment.attach["DenyMarketplaceAccessToAcceptOffers_007710834192"]' 007710834192:p-7tgph3lx
terraform import 'aws_organizations_policy_attachment.attach["DenyMarketplaceAccessToAcceptOffers_339712829092"]' 339712829092:p-7tgph3lx

# --- DenyStnoTagUpdates (p-80hdksq2) ---
terraform import 'aws_organizations_policy_attachment.attach["DenyStnoTagUpdates_007710834192"]' 007710834192:p-80hdksq2

# --- Please_Do_not_touch_-_Merged_Encryption_DR (p-pgiffdpe) ---
terraform import 'aws_organizations_policy_attachment.attach["Please_Do_not_touch_-_Merged_Encryption_DR_007710834192"]' 007710834192:p-pgiffdpe

# --- Deny-EC2-VOL-ELB-RDS-SNAPSHOTS-Without-Tags-CT-OCP (p-4b02depd) ---
terraform import 'aws_organizations_policy_attachment.attach["Deny-EC2-VOL-ELB-RDS-SNAPSHOTS-Without-Tags-CT-OCP_339712829092"]' 339712829092:p-4b02depd

echo ""
echo "=== All 5 attachments imported successfully ==="
echo ""
echo "NEXT STEPS:"
echo "  1. Run: terraform plan -var-file=terraform.tfvars"
echo "     Verify plan shows 0 changes (no add/destroy)"
echo ""
echo "  2. Remove these attachments from the ADMIN state (cf-aws-org-scp-v3):"
echo "     cd ..  (back to root)"
echo "     terraform state rm 'aws_organizations_policy_attachment.attach[\"DenyMarketplaceAccessToAcceptOffers_007710834192\"]'"
echo "     terraform state rm 'aws_organizations_policy_attachment.attach[\"DenyMarketplaceAccessToAcceptOffers_339712829092\"]'"
echo "     terraform state rm 'aws_organizations_policy_attachment.attach[\"DenyStnoTagUpdates_007710834192\"]'"
echo "     terraform state rm 'aws_organizations_policy_attachment.attach[\"Please_Do_not_touch_-_Merged_Encryption_DR_007710834192\"]'"
echo "     terraform state rm 'aws_organizations_policy_attachment.attach[\"Deny-EC2-VOL-ELB-RDS-SNAPSHOTS-Without-Tags-CT-OCP_339712829092\"]'"
echo ""
echo "  3. Remove these entries from the admin terraform.tfvars attachments map"
echo "     so admin pipeline won't try to recreate them."
