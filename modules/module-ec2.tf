module "ec4"{
    source = "../resource-aws"
    ami-id = "ami-03265a0778a880afb"
    instance_type ="t2.micro"
}