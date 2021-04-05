provider "aws" {
  region="us-east-1"

}

resource "aws_instance" "myec2" {
    ami = "ami-0742b4e673072066f"
    instance_type = "t2.micro"
    tags = {
      "Name" = "SSM-Instance"
    }

    
  }