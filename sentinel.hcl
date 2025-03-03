module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}
  
module "tfstate-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}  
  
module "aws-functions" {  
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/aws/aws-functions/aws-functions.sentinel"
}
  
policy "enforce-mandatory-tags" {
  source            = "https://raw.githubusercontent.com/FrequencyUnk/terraform-guides/master/governance/third-generation/aws/enforce-mandatory-tags.sentinel"
  enforcement_level = "advisory"
}

policy "less-than-50-month" {
  enforcement_level = "soft-mandatory"
}

policy "require-all-resources-from-pmr" {
  enforcement_level = "hard-mandatory"
}
