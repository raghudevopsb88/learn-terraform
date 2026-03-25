resource "aws_instance" "main" {
  ami = var.ami
  instance_type = "t3.small"

  lifecycle {
    create_before_destroy = true
  }
}

variable "ami" {
  default = "ami-0220d79f3f480ecf5"
}

