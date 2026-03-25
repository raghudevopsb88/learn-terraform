action "aws_ec2_stop_instance" "example" {
  config {
    instance_id = aws_instance.main.id
  }
}

resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = "t3.small"

  lifecycle {
    # The action_trigger block links the action to lifecycle events
    action_trigger {
      events = [
        after_create,
        after_update
      ]
      actions = [
        action.aws_ec2_stop_instance.example # Reference the action by its address
      ]
    }
  }

}

variable "ami" {
  default = "ami-0220d79f3f480ecf5"
}

# resource "terraform_data" "restart_trigger" {
#   triggers_replace = [
#     aws_instance.main.ami
#   ]
#
#   provisioner "local-exec" {
#     command = "echo 'Instance ${aws_instance.main.id} was recreated with AMI ${var.ami}'"
#   }
# }

