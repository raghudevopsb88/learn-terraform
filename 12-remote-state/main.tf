terraform {
  backend "s3" {
    bucket = "terraform-state-d88"
    key    = "demostate/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "null_resource" "test" {}



