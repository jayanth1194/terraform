variable "instance_type_small"{
    type = string 
    default = "t3.medium"
}
variable "instance_type_big"{
    type =string
    default ="t2.micro"
}

variable "name-server"{
    type =string 
    default = "redis"
}


variable "instance_names"{
    type =list 
    default = ["redis","mongodb","web","shiiping","rabbitmq","cart","user","payment","mysql","rating"]
}
variable "ami-id"{
    type =string 
    default= "ami-03265a0778a880afb"

}
variable "tags" {
    type = map
    default = {
        Name = "nginx"
        Environment = "QA"
        Terraform = "true"
        Component = "nginx" 

    }
}



variable "zone-id"{
    type = string 
    default = "Z00707943RLGG68W74L0S" 
}


variable "domain"{
    type =string 
    default = "brainchange.online"
}


variable "instances"{
    type = map 
    default ={
        "mysql"="t2.micro"
        "redis"= "t3.medium"
        "nginx" ="t2.micro"
    }
}



variable "ingress"{
    type =list
    default = [
        {
        description = "http req only"
        protocol = "http"
        from_port = 80
        to_port = 80
        cidr_blocks =  ["0.0.0.0/0"]
        },
        {
        description = "https req "
        protocol = "htps"
        from_port = 443
        to_port = 443
        cidr_blocks =  ["0.0.0.0/0"]
        },
        {
        description = "ssh traffic "
        protocol = "ssh"
        from_port = 22
        to_port = 22
        cidr_blocks =  ["0.0.0.0/0"]}

    ]
}


variable "cidr-block"{
    type = list
    default = ["0.0.0.0/0"]
}