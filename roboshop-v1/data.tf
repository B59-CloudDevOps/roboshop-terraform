data "aws_route53_zone" "main" {
  name         = "clouding-app.shop"
  private_zone = false
}

data "aws_security_group" "main" {
  name = "b59-allow-all"
}

# data "aws_ami" "main" {
#   most_recent = true

#   owners = ["355449129696"]
#   tags = {
#     Name = "DevOps-LabImage-RHEL9"
#   }
# }

data "aws_ami" "main" {
  most_recent = true
  name_regex  = "b59-learning-ami-with-ansible" # majke sure to create this AMI using the labImage after installing ansible
  owners      = ["355449129696"]
}