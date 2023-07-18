# VPC for aws
resource "aws_vpc" "ec2_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "get_vpc_for_ec2"
  }
}