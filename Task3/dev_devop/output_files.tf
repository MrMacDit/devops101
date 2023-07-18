output "amazon_tests" {
  value = aws_instance.amazon.public_ip
}

output "aws_vpc_output" {
  value = aws_vpc.ec2_vpc.id
}
