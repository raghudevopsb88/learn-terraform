resource "aws_instance" "main" {
  ami = var.ami
  instance_type = "t3.small"

  lifecycle {
    create_before_destroy = true
  }
}

variable "ami" {
  default = "ami-0220d79f3f480ecf5"
}

resource "aws_instance" "main1" {
  ami = var.ami
  instance_type = "t3.small"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_instance" "main1" {
  ami = var.ami1
  instance_type = "t3.small"

  lifecycle {
    ignore_changes = [ami]
  }
}

variable "ami1" {
  default = "ami-0220d79f3f480ecf5"
}