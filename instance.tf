provider "aws" {
  region = "ap-south-1"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY 
}
resource "aws_instance" "web" {
  ami           = "ami-0108d6a82a783b352"
  instance_type = "t3.micro"
  key_name      = "DevOps_Sumit_key"
  subnet_id     = "subnet-01db57110f47cf3ed"
  tags = {
    Name = "Sumit-HelloWorld"
  }
  vpc_security_group_ids      = [
  "sg-0ee34d73e07a56b80"
  ]
  associate_public_ip_address = "true"
}
