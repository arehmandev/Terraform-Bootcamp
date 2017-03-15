variable "region" {
  description = "The region to deploy the instance"
  default     = "eu-west-1"
}

variable "awsprofile" {
  description = "The local AWS-CLI profile to be used for AWS api credentials"
}

variable "instance_size" {}

variable "instance_count" {}

variable "instance_name" {}

variable "key_name" {}

variable "public_key_path" {}
