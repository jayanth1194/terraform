

# resource "aws_instance" "servers_10"{
#     for_each = var.instances
#     ami = var.ami-id
#     instance_type = each.value
#     tags={
#         Name= each.key 
#     }

# }


#  resource "aws_route53_record" "domain" {
#    for_each = aws_instance.servers_10
#    zone_id = var.zone-id
#    name    = each.key
#    type    = "A"
#    ttl     = 300
#    records = [each.key == "web" ? each.value.public_ip: each.value.private_ip]
# }


# # output "aws-instance-total"{
# #     value = aws_instance.servers_10
# # }