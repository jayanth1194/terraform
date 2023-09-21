resource "aws_security_group" "tfvars-group"{
#   ami = var.ami-id
name = "terraform tfvars-group"
description =" checking tfvars"

ingress {
    to_port = 80
    from_port = 80
    cidr_blocks = var.cidr-block
    protocol ="all"

}
egress {
    from_port =0
    to_port =0
    protocol ="all"
    cidr_blocks =var.cidr-block


}




}




resource "aws_instance" "_10servers"{
    for_each = var.instances
    ami =var.ami-id
    instance_type = each.value
    tags= {
        Name =each.key
    }

}


 


    

