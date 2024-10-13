##############
# Secutiry Group to access EC2 host in  different AZ
##############
resource "aws_security_group" "security-group-1" {
  name        = "Access EC2_1"
  description = "Enables access 22/80/443"
  vpc_id      = aws_vpc.aws-rs-lab-vpc.id
  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #  for bastion  10.0.10.0/24 access only Bastion host from  public VPC_1 and only port 22
  }
  ingress {
    description = "http access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "https access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "SG for private network 1"
  }
}
#############################
resource "aws_security_group" "security-group-2" {
  name        = "Access EC2_2"
  description = "Enables access 22/80/443"
  vpc_id      = aws_vpc.aws-rs-lab-vpc.id
  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # access only Bastion host from public VPC_1 and only port 22
  }
  ingress {
    description = "http access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "https access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "SG for private network 2"
  }
}
