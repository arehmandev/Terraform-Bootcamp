variable "region" {}

variable "awsprofile" {}

variable "vpcname" {}

# Subnet Availability zones
variable "subnetaz1" {
  type = "map"
}

variable "subnetaz2" {
  type = "map"
}

variable "subnetaz3" {
  type = "map"
}

#VPC Networking
variable "vpc_cidr" {}

#2 Private subnets
variable "private1_cidr" {}

variable "private2_cidr" {}

variable "private3_cidr" {}

#2 Public subnets
variable "public1_cidr" {}

variable "public2_cidr" {}

variable "public3_cidr" {}
