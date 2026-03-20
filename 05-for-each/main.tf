resource "null_resource" "test" {
  for_each = var.inputs
}

variable "inputs" {
  default = {
    z = 300
    x = 100
    y = 200

  }
}

