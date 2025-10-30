provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web" {
  ami = "ami-07860a2d7eb515d9a"
  instance_type = "t3.micro"

  subnet_id = "subnet-05783c893489de3f5"
  vpc_security_group_ids = ["sg-0aff6ebf0d0b4664c"]

  tags = {
  "Terraform" = "29-october-2025"
  }
}