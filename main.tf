variable "ENV"{
  default=""
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0ac43988dfd31ab9a"
  instance_type = "t2.micro"

  tags = {
    Name = var.ENV
  }
}
