variable "componets" {
  default = {
    mongodb = {
      instance_type = "t2.micro"
    }
    catalogue = {
      instance_type = "t3.micro"
    }
    redis = {
      instance_type = "t3.micro"
    }
    user = {
      instance_type = "t3.micro"
    }
    cart = {
      instance_type = "t2.micro"
    }

    mysql = {
      instance_type = "t3.micro"
    }
    shipping = {
      instance_type = "t3.micro"
    }

    rabbitmq = {
      instance_type = "t3.micro"
    }
    payment = {
      instance_type = "t3.micro"
    }
    frontend = {
      instance_type = "t3.micro"
    }
  }
}

variable "env" {}
variable "token" {}