resource "aws_instance" "main" {
  ami = var.ami
  instance_type = "t3.small"
}

variable "ami" {
  default = "ami-0220d79f3f480ecf5"
}

