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
resource "aws_default_subnet" "default_az1" {
availability_zone = "ap-south-1a"
  tags = {
    Name = "Default subnet for ap-south-1a"
  }
}
