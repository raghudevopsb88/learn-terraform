resource "aws_security_group" "main" {

  for_each = var.component
  name = each.key

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
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