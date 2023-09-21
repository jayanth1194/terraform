# #   resource "aws_instance" "terraform-ec2"{
# #     ami = var.ami-id  # devops-practice
# #     instance_type ="t2.micro"
    
# #     tags = var.tags
# #   security_groups = [aws_security_group.new-security.name]

# # # tags.Name == "nginx" ? instance_type=var.instance_type_big:instance_type=var.instance_type_small

# # } 


# # # resource "aws_instance" "_10_servers"{
# # #   count = 10
# # #   ami = var.ami-id  # devops-practice
# # #   instance_type = var.instance_names[count.index]=="mongodb"||var.instance_names[count.index]=="mysql" ? "t2.micro": "t3.medium"
# # #   tags ={
# # #     Name= var.instance_names[count.index]
    
# # #   }
# # # }


# # #route 53 record


# # # resource "aws_route53_record" "domain" {
# # #   count = 10
# # #   zone_id = var.zone-id
# # #   name    = "${var.instance_names[count.index]}"
# # #   type    = "A"
# # #   ttl     = 300
# # #   records = [aws_instance._10_servers[count.index].private_ip]
# # # }





# # # upload keys to aws server 


# # resource "aws_key_pair" "testing-lab"{
# #   key_name = "testing-key"
# #   # use file function to get the ssh.pem 
# #   public_key = local.ec2_key
# # }
# # resource "aws_instance" "ec2-key"{
# #   ami = var.ami-id
# #   instance_type = var.instance_type_small
# #   key_name = aws_key_pair.testing-lab.key_name
# # }




# # create 10 instances using  loop
# resource "ami_instance" "10_servers"{
#   ami = var.ami-id
#   instance_type = "t2.micro"



# }