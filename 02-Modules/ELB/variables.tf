variable "region" {}

variable "instance_name" {}

variable "security_groups" {}

variable "instances" {
  type = "list"
}

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
