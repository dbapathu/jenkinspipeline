provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jenkinstfansible" {
  ami           = "ami-0875345809c54b79e"
  instance_type = "t2.micro"
  key_name = aws_key_pair.TF_keywin.key_name

  tags = {
    Name = "jenkinstfansibleec2"
  }
}
resource "aws_key_pair" "TF_keywin" {
  key_name   = "TF_keywin"
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "TF-keywin1" {
    content  = tls_private_key.rsa.private_key_pem
    filename = "tfkeywin"
}
