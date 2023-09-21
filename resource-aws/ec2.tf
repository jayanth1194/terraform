resource "aws_instance" "module-check" {
    ami =var.ami-id
    instance_type = var.instance_type
}