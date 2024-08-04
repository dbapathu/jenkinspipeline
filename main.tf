provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkinstfansible" {
  ami           = "ami-00b1dcc8d3eab4fdb"
  instance_type = "t2.micro"

  tags = {
    Name = "jenkinstfansibleec2"
  }
}
