variable "x" {
  default = "abc"
}

variable "y" {
  default = 10
}

variable "z" {
  default = false
}

variable "example1" {
  default = [1,"a",false, 2]
}

variable "example2" {
  default = {
    a = "foo"
    b = 123
    x = "bar"
  }
}

output "x" {
  value = var.x
}

output "x1" {
  value = "x is ${var.x}"
}

