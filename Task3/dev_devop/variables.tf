# Linux ami
variable "ec2_ami" {
  description = "This is a description of AMAZON LINUX AMI"
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


variable "user_names" {
  description = "give different instances their names"
  type        = list(string)
}

variable "ec2_environ" {
  description = "This gives on what platfom the VM is created for"
  type        = list(string)
}

variable "ec2_descript" {
  description = "This describes the VM is created for"
  type        = list(string)
}