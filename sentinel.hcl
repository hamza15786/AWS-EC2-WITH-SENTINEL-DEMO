module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

policy "restrict-current-ec2-instance-type" {
  source            = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/aws/restrict-ec2-instance-type.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "less-than-100-month" {
  enforcement_level = "hard-mandatory"
}
