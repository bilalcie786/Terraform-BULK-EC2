terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "server" {
  count = var.instances

  ami           = "ami-0a0ad6b70e61be944"
  instance_type = "t2.nano"

  tags = {
    Name = "Server ${count.index}"
  }
}
