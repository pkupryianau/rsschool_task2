# VPC
resource "aws_vpc" "aws-rs-lab-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "aws-rs-lab-vpc"
  }
}

# Public subnetss
resource "aws_subnet" "public-subnet-1" {
  tags = {
    Name = "public-aws-rs-lab-subnet-1"
  }
  cidr_block        = var.public_subnet_1
  vpc_id            = aws_vpc.aws-rs-lab-vpc.id
  availability_zone = var.availability_zones[0]
}
resource "aws_subnet" "public-subnet-2" {
  tags = {
    Name = "public-aws-rs-lab-subnet-2"
  }
  cidr_block        = var.public_subnet_2
  vpc_id            = aws_vpc.aws-rs-lab-vpc.id
  availability_zone = var.availability_zones[1]
}

# Private subnets
resource "aws_subnet" "private-subnet-1" {
  tags = {
    Name = "private-aws-rs-lab-subnet-1"
  }
  cidr_block        = var.private_subnet_1
  vpc_id            = aws_vpc.aws-rs-lab-vpc.id
  availability_zone = var.availability_zones[0]
}
resource "aws_subnet" "private-subnet-2" {
  tags = {
    Name = "private-aws-rs-lab-subnet-2"
  }
  cidr_block        = var.private_subnet_2
  vpc_id            = aws_vpc.aws-rs-lab-vpc.id
  availability_zone = var.availability_zones[1]
}
