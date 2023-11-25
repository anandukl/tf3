terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 5.26.0"
   }
 }
}
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXOQ24E7PPRESZXNK"
  secret_key = "jBdQuFbu4boKav8w5HfsKDKWrkWiZIZoqxoZfrZC"
}

provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

resource "aws_instance" "ec2_instance" {
  count = 2

  ami           = "ami-0fc5d935ebf8bc3bc"  # Specify the AMI ID
  instance_type = "t2.micro"               # Specify the instance type

  tags = {
    Name = "EC2 Instance ${count.index + 1}"
  }
}