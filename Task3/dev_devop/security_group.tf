resource "aws_security_group" "ec2_secure_group" {
  name        = "security_group_for_http_and_ssh"
  description = "Security group for both ssh and http for Linux and Ubuntu"
  vpc_id      = "vpc-062c8518bcd91aa46"
  # For HTTP
  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # For SSH
  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http_and_ssh"
  }
}