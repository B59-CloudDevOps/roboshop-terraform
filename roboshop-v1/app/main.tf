resource "aws_instance" "main" {

  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = "${var.name}-${var.env}"
  }
}

resource "aws_route53_record" "main" {
  zone_id = var.zone_id
  name    = "${var.name}-${var.env}.clouding-app.shop"
  type    = "A"
  ttl     = 10
  records = [aws_instance.main.private_ip]
}


resource "null_resource" "app" {
  depends_on = [aws_instance.main, aws_route53_record.main]

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.main.private_ip
    }

    inline = [
      "sudo yum install -y git",
      "ansible-pull -i localhost, -U  https://github.com/B59-CloudDevOps/roboshop-ansible.git  -e env=${var.env} -e token=${var.token}  -e component=${var.name} roboshop.yaml"
    ]
  }
}