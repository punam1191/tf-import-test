resource "aws_instance" "import-test" {
    ami = var.ami
    instance_type = var.instanceType
    tags = {
        Name = "import-test"
    }
}