################################################################
# Route tables for the subnets 1
resource "aws_route_table" "public-route-table-1" {
  vpc_id = aws_vpc.aws-rs-lab-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws-rs-lab-igw.id
  }
  tags = {
    Name = "public-aws-rs-lab-route-table-1"
  }
}
resource "aws_route_table" "private-route-table-1" {
  vpc_id = aws_vpc.aws-rs-lab-vpc.id
  tags = {
    Name = "private-aws-rs-lab-route-table-1"
  }
}
# Route tables for the subnets 2
resource "aws_route_table" "public-route-table-2" {
  vpc_id = aws_vpc.aws-rs-lab-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws-rs-lab-igw.id
  }
  tags = {
    Name = "public-aws-rs-lab-route-table-2"
  }
}
resource "aws_route_table" "private-route-table-2" {
  vpc_id = aws_vpc.aws-rs-lab-vpc.id
  tags = {
    Name = "private-aws-rs-lab-route-table-2"
  }
}
#####################################################################
# Route the public subnet 1 traffic through the Internet Gateway
resource "aws_route" "public-internet-igw-route-1" {
  route_table_id         = aws_route_table.public-route-table-1.id
  gateway_id             = aws_internet_gateway.aws-rs-lab-igw.id
  destination_cidr_block = "0.0.0.0/0"
}
# Route the public subnet 2 traffic through the Internet Gateway
resource "aws_route" "public-internet-igw-route-2" {
  route_table_id         = aws_route_table.public-route-table-2.id
  gateway_id             = aws_internet_gateway.aws-rs-lab-igw.id
  destination_cidr_block = "0.0.0.0/0"
}
#####################################################################
# Route the private subnet 1 traffic through the Internet Gateway
resource "aws_route" "private-internet-igw-route-1" {
  route_table_id         = aws_route_table.private-route-table-1.id
  gateway_id             = aws_internet_gateway.aws-rs-lab-igw.id
  destination_cidr_block = "0.0.0.0/0"
}
# Route the public subnet 2 traffic through the Internet Gateway
resource "aws_route" "private-internet-igw-route-2" {
  route_table_id         = aws_route_table.private-route-table-2.id
  gateway_id             = aws_internet_gateway.aws-rs-lab-igw.id
  destination_cidr_block = "0.0.0.0/0"
}
####################################################################
# Associate the newly created route tables to the subnets
resource "aws_route_table_association" "public-route-1-association" {
  route_table_id = aws_route_table.public-route-table-1.id
  subnet_id      = aws_subnet.public-subnet-1.id
}

resource "aws_route_table_association" "public-route-2-association" {
  route_table_id = aws_route_table.public-route-table-2.id
  subnet_id      = aws_subnet.public-subnet-2.id
}
resource "aws_route_table_association" "private-route-1-association" {
  route_table_id = aws_route_table.private-route-table-1.id
  subnet_id      = aws_subnet.private-subnet-1.id
}
resource "aws_route_table_association" "private-route-2-association" {
  route_table_id = aws_route_table.private-route-table-2.id
  subnet_id      = aws_subnet.private-subnet-2.id
}
######################################################################
