provider "aws" {
 region = var.region
 assume_role {
   role_arn = "arn:aws:iam::${var.account_id}:role/mi-iaac"
 }
 ignore_tags {
   keys = [
     "createdby",
     "dud",
     "owner",
     "tfc_created",
     "domain"
   ]
 }
}
terraform { 
  cloud { 
    
    organization = "marriott" 

    workspaces { 
      name = "cf-aws-org-Agrp-sandbox" 
    } 
  } 
}