resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Prod-VPC"
  }
  
}

resource "aws_subnet" "name" {
  vpc_id = aws_vpc.name.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "subnet-1"
  }
  
}

resource "aws_subnet" "name2" {
  vpc_id = aws_vpc.name.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "subnet-2"
  }
  
}
