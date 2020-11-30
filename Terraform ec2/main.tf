
provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "${var.region}"
}
#vpc
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}
output "aws_vpc_id" {
  value = "${aws_default_vpc.default.id}"
}
# Security Group##
  resource "aws_security_group" "terraform_prueba" {
  description = "Allow limited inbound external traffic"
  vpc_id      = "${aws_default_vpc.default.id}"
 # vpc_id      = "vpc-6ad16c01"
  name        = "Terraform_ec2"

  ingress {
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    to_port     = 22
  }

  ingress {
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
  }
  

  egress {
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
  }

  tags = {
    Name = "ec2-Terraform"
  }
}

resource "aws_instance" "terraform_wapp" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    vpc_security_group_ids =  [ "${aws_security_group.terraform_prueba.id}" ]
    key_name               = "x"
    count         = 2
    associate_public_ip_address = true
    tags = {
      Name              = "terraform_ec2"
      Environment       = "development"
      Project           = "prueba"
    }
}

output "instance_id_list"     { value = ["${aws_instance.terraform_wapp.*.id}"] }