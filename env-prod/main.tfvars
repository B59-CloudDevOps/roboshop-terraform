env = "prod"

vpc = {
  main = {
    vpc_cidr_block        = "10.2.0.0/16"
    web_subnet_cidr_block = ["10.2.0.0/24", "10.2.1.0/24"]
    app_subnet_cidr_block = ["10.2.2.0/24", "10.2.3.0/24"]
    db_subnet_cidr_block  = ["10.2.4.0/24", "10.2.5.0/24"]
    az                    = ["us-east-1a", "us-east-1b"]
  }
}

tags = {
  project_name = "roboshop"
  created_by   = "terraform"
  env          = "prod"
}