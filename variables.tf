variable "region" {
  description = "The AWS region to create resources in."
  default     = "eu-central-1"
}

# networking

variable "vpc_cidr" {
  description = "CIDR Block for VPC"
  default     = "10.0.0.0/16"
}
variable "public_subnet_1" {
  description = "CIDR Block for Public Subnet 1"
  default     = "10.0.10.0/24"
}
variable "public_subnet_2" {
  description = "CIDR Block for Public Subnet 2"
  default     = "10.0.20.0/24"
}
variable "private_subnet_1" {
  description = "CIDR Block for Private Subnet 1"
  default     = "10.0.11.0/24"
}
variable "private_subnet_2" {
  description = "CIDR Block for Public Subnet 2"
  default     = "10.0.21.0/24"
}
variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}
