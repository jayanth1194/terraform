# resource "aws_security_group" "new-security" {
#     name = "terraform-sg" 
#     description =  "first sg from terraform"
#     # vpc_id = data.aws_vpc.default.id

#     dynamic ingress {
#         for_each = var.ingress
#         content {
#         description = ingress.value.description
        
#         protocol = ingress.value.protocol
#         from_port = ingress.value.from_port
#         to_port = ingress.value.to_port
#         cidr_blocks =  ["0.0.0.0/0"]
#         }
#     }
#     egress {
#         description = " outbound traffic"
#         protocol = "-1"
#         from_port = 0
#         to_port = 0
#         cidr_blocks = ["0.0.0.0/0"]

#     }

# }