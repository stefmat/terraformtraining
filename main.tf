provider "aws" {
  region = "us-east-1"
}

variable "instance_count" {
  description = "instance count value"
  default = 2
  type = number
  
}

resource "aws_instance" "myec2" {
       count = var.instance_count
        ami = "ami-0742b4e673072066f"
        instance_type = "t2.micro"

        tags = {
          "key" = "richaInstanceEC2"
        }
  
}

output "show_instances" {
  value = aws_instance.myec2[*].public_ip
  
}