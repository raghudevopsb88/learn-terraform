variable "message" {}

resource "null_resource" "test" {
  provisioner "local-exec" {

    command = "echo ${var.message}"

  }
}

variable "a" {}
variable "b" {}

output "multiply" {
  value = var.a * var.b
}



