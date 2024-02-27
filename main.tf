provider "aws" {
  region = var.region
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-008fe2fc65df48dac"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
