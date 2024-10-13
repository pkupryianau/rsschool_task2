##############
# Secutiry Group to access Bastion host in  different AZ
##############
resource "aws_security_group" "ssh-security-group" {
  name        = "SSH Access"
  description = "Enable access to port 22"
  vpc_id      = aws_vpc.aws-rs-lab-vpc.id
  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22 # change after test
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "ssh sg bastion host access"
  }
}
