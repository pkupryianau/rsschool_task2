# Create an EC2 Instance Bastion host
#########################################################
resource "aws_instance" "bastion" {
  ami                         = "ami-0084a47cc718c111a" #ubuntu 24.04 eu-central-1
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public-subnet-1.id #
  availability_zone           = var.availability_zones[0]
  vpc_security_group_ids      = [aws_security_group.ssh-security-group.id]
  associate_public_ip_address = true
  key_name                    = "tbl" # aws key
  tags = {
    Name = "bastion host"
  }
}
#########################################################
## EC2 in private VPC 1-2
#########################################################
resource "aws_instance" "ec2_1" {
  ami                         = "ami-0084a47cc718c111a"
  instance_type               = "t2.micro"
  availability_zone           = var.availability_zones[0]
  subnet_id                   = aws_subnet.private-subnet-1.id
  vpc_security_group_ids      = [aws_security_group.security-group-1.id]
  associate_public_ip_address = true
  key_name                    = "tbl"
  tags = {
    Name = "ec2 in private_1 VPC"
  }
}
resource "aws_instance" "ec2_2" {
  ami                         = "ami-0084a47cc718c111a"
  instance_type               = "t2.micro"
  availability_zone           = var.availability_zones[1]
  subnet_id                   = aws_subnet.private-subnet-2.id
  vpc_security_group_ids      = [aws_security_group.security-group-2.id]
  associate_public_ip_address = true
  key_name                    = "tbl"
  tags = {
    Name = "ec2 in private_2 VPC"
  }
}
