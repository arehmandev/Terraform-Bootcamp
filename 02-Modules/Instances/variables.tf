variable "instance_size" {}

variable "instance_name" {}

variable "key_name" {}

variable "security_groups" {}

variable "public_key_path" {}

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
