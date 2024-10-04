# Internet Gateway for the public subnet
resource "aws_internet_gateway" "aws-rs-lab-igw" {
  vpc_id = aws_vpc.aws-rs-lab-vpc.id
  tags = {
    Name = "aws-rs-lab-igw"
  }
}
