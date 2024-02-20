# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web" {
  ami           = "ami-0e670eb768a5fc3d4"
  instance_type = "t2.micro"
  tags = {
    Name = "Server"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = "vpc-02c0c20de89ddae26"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
