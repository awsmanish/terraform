provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "new-instance" {
  ami           = "ami-0310483fb2b488153"
  instance_type = "t2.micro"

}

resource "aws_eip" "new01-eip" {
  instance = aws_instance.new-instance.id
}

output "public_ip" {
  value = aws_eip.new01-eip.public_ip
}
