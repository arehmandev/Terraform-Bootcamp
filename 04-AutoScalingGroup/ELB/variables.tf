variable "instance_name" {}

variable "subnets" {
  type = "list"
}

variable "security_groups" {}

variable "region" {}

variable "subnetaz1" {
  type = "map"
}
variable "subnetaz2" {
  type = "map"
}
variable "subnetaz3" {
  type = "map"
}
