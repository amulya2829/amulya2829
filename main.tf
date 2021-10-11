provider "aws" {
  region = "us-east-2"
}
#
resource "aws_instance" "ubuntu" {
  ami           = "ami-074cce78125f09d61"
  instance_type = "t2.micro"

  tags = {
    Name = "${var.env}-ubuntu-server"
    Owner = "Dennis Astahov"
  }
}
