# aws for Linux system_dev_environment
resource "aws_instance" "amazon" {
  ami             = var.ec2_linux_ami
  instance_type   = var.ec2_instance_type
  key_name        = var.ec2_key_name
  security_groups = [aws_security_group.ec2_secure_group.name]
  user_data       = <<EOF
    #!/bin/bash
    sudo yum install java-1.8.0-amazon-corretto-devel.x86_64 maven git -y
  EOF
  tags = {
    Name = "amazon_node"
  }
}