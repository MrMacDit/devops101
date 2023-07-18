ec2_ami           = "ami-01dd271720c1ba44f"
ec2_instance_type = "t2.micro"
ec2_key_name      = "lesson1"
user_names        = ["Dev_machine", "SIT_machine", "Prod_machine"]
ec2_environ       = ["Developmental", "SIT", "Production"]
ec2_descript      = ["This machine is majorly for testing", "Only deploy to this machine once your code is stable and requires further testing", "Only deploy welltested and stable codes to this Machine"]
