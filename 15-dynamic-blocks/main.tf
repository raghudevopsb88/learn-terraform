resource "aws_security_group" "main" {

  for_each = var.component
  name = each.key

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}

variable "component" {
  default = {
    one = {
      ports = {
        ssh = 22
        http = 80
        https = 443
      }
    }
    two = {
      ports = {
        ssh = 22
        app = 8080
      }
    }
  }
}