resource "aws_vpc" "main" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "name" = "richa"
    }
  
}
resource "aws_subnet" "richa" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.17.0/24"

    tags = {
      "name" = "richa"
    }
  
}