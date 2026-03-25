variable "input" {
  default = {
    one = "100"
    two = "200"
    three = "300"
  }
}

output "out" {
  value = [for i,j in var.input: j]
}

