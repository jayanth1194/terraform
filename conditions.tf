# resource "aws_instance" "check-condition"{
#     ami = var.ami-id
#     instance_type = var.name-server =="redis"? var.instance_type_small :var.instance_type_big
# }