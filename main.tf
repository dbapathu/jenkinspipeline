provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkinstfansible" {
  ami           = "ami-0875345809c54b79e"
  instance_type = "t2.micro"

  tags = {
    Name = "jenkinstfansibleec2"
  }
}
