variable "some" {
  default = "hello world"
}

output "some_incaps" {
  value = upper(var.some)
}

