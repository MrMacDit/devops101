ec2_ami           = "ami-0fb2f0b847d44d4f0"
ec2_instance_type = "t2.micro"
ec2_key_name      = "lesson1"
user_names        = ["ubuntu_Dev_machine", "ubuntu_SIT_machine", "ubuntu_Prod_machine"]
ec2_environ       = ["Developmental", "SIT", "Production"]
ec2_descript      = ["This machine is majorly for testing", "Only deploy to this machine once your code is stable and requires further testing", "Only deploy welltested and stable codes to this Machine"]
