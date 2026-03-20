resource "aws_instance" "test" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-09b871cf63e2bb80b"]

  provisioner "remote-exec" {
    connection {
      type = "ssh"
      host = self.public_ip
      user = "ec2-user"
      password = "DevOps321"
    }
    inline = [
      "sudo echo Hello >/root/some"
    ]
  }
}

