resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = "t3.small"
}

variable "ami" {
  default = "ami-0220d79f3f480ecf5"
}

resource "terraform_data" "restart_trigger" {
  triggers_replace = [
    aws_instance.main.ami
  ]

  provisioner "local-exec" {
    command = "echo 'Instance ${aws_instance.main.id} was recreated with AMI ${var.ami}'"
  }
}

