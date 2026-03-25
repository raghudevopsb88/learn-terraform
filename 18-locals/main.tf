variable "input" {
  default = {
    one = "100"
    two = "200"
    three = "300"
  }
}

locals {
  input_list = [for i,j in var.input: j]
}

output "out" {
  value = local.input_list
}

