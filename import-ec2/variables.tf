variable "region" {
    type = string
    default = "ap-south-1"
}

variable "ami" {
    default = "ami-068e0f1a600cd311c"
}

variable "instanceType" {
    default = "t2.micro"
}