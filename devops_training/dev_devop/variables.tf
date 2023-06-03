# Linux ami
variable "ec2_linux_ami" {
  description = "This is a description of AMAZON LINUX AMI"
  type        = string
}

# Ubuntu ami
variable "ec2_ubuntu_ami" {
  description = "This is a description of AMAZON UBUNTU AMI"
  type        = string
}

variable "ec2_instance_type" {
  description = "This is a description of INSTANCE TYPE"
  type        = string
}

variable "ec2_key_name" {
  description = "This is a description of KEY NAME"
  type        = string
}