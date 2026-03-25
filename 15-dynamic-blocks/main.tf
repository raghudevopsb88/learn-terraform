resource "aws_security_group" "main" {

  for_each = var.component
  name = each.key

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