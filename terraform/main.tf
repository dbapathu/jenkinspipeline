provider "aws" {
  region = "us-east-1"
  access_key= "AKIA5PAC2RKBSRZ5TQ5J"
  secret_key= "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"
}

resource "aws_instance" "jenkinstfansible" {
  ami           = "ami-00b1dcc8d3eab4fdb"
  instance_type = "t3.micro"

  tags = {
    Name = "jenkinstfansible"
  }
}
