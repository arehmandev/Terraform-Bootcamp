variable "region" {
  description = "The region to deploy the instance"
  default     = "eu-west-1"
}

variable "awsprofile" {
  description = "The local AWS-CLI profile to be used for AWS api credentials"
}

variable "instance_size" {}

variable "instance_name" {}

variable "key_name" {}

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
