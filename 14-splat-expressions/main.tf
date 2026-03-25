resource "aws_instance" "main" {
  for_each = var.servers
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
}

variable "servers" {
  default = {
    one = ""
    two = ""
    three = ""
  }
}
