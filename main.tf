resource "aws_s3_bucket" "my_bucket" {
  bucket = "anandu1003assignment" 
  tags = {
    Project     = "CLOD1003"
    "Created by" = "Anandu Prasad" 
  }
}



resource "aws_instance" "intances" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  count         = 2
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_web.id]
  tags = {
    Project     = "CLOD1003"
    "Created by" = "Anandu Prasad"
  }
}

