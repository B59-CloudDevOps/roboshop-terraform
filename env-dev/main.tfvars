env = "dev"

vpc = {
  main = {
    vpc_cidr_block        = "10.0.0.0/16"
    web_subnet_cidr_block = ["10.0.0.0/24", "10.0.1.0/24"]
    app_subnet_cidr_block = ["10.0.2.0/24", "10.0.3.0/24"]
    db_subnet_cidr_block  = ["10.0.4.0/24", "10.0.5.0/24"]
  }
}

tags = {
  project_name = "roboshop"
  created_by   = "terraform"
  env          = "dev"
}