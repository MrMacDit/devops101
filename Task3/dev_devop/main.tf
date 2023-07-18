terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "app_server" {
  ami             = var.ec2_ami
  instance_type   = var.ec2_instance_type
  key_name        = var.ec2_key_name
  count           = length(var.user_names)
  security_groups = [aws_security_group.my_security_group.name]
  user_data       = <<EOF
    #!/bin/bash
    sudo yum install java-1.8.0-amazon-corretto-devel.x86_64 maven git -y
  EOF

  tags = {
    Name          = var.user_names[count.index]
    "Environment" = var.ec2_environ[count.index]
    "Description" = var.ec2_descript[count.index]
  }
}
