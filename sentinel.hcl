module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

 policy "enforce-mandatory-tags" {
  source            = "https://raw.githubusercontent.com/FrequencyUnk/terraform-guides/master/governance/third-generation/aws/enforce-mandatory-tags.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "less-than-100-month" {
  enforcement_level = "hard-mandatory"
}

policy "disallow-s3-acl-public-read-write" {
  enforcement_level = "hard-mandatory"
}
