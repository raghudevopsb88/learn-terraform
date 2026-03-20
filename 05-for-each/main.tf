resource "null_resource" "test" {
  for_each = var.inputs
}

variable "inputs" {
  default = {
    x = 100
    y = 200
    z = 300
  }
}
