# data "aws_ami" "ami-id"{
#     # most_recent = false 
#     owners =["679593333241"]
#     filter{
#         name = "name"
#         values = ["aerospike-amazonlinux2-*"]
#     }

# }

# output "ami-id"{
#     value = [data.aws_ami.ami-id.id]
# }
# data "aws_vpc" "default"{
#     default =true
# }

# output "vpd"{
#     value = data.aws_vpc.default
# }

# # resource "aws"




# data "aws_instances" "check_servers"{
#     instance_state_names = ["running", "stopped"]
# }
# output "all_servers"{
#     value = data.aws_instances.check_servers.default
# }