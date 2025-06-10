module "vpc" {
  source   = "git::https://github.com/B59-CloudDevOps/tf-modulep-vpc.git"
  for_each = var.vpc

  env                   = var.env
  vpc_cidr_block        = each.value["vpc_cidr_block"]
  web_subnet_cidr_block = each.value["web_subnet_cidr_block"]
  app_subnet_cidr_block = each.value["app_subnet_cidr_block"]
  db_subnet_cidr_block  = each.value["db_subnet_cidr_block"]
  availability_zone     = each.value["availability_zone"]
  tags                  = var.tags
}