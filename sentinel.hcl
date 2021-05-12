module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

policy "enforce-mandatory-tags" {
  enforcement_level = "soft-mandatory"
}

policy "less-than-100-month" {
  enforcement_level = "soft-mandatory"
}
