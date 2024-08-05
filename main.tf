provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkinstfansible" {
  ami           = "ami-0875345809c54b79e"
  instance_type = "t2.micro"
  key_name = TF_key

  tags = {
    Name = "jenkinstfansibleec2"
  }
}

