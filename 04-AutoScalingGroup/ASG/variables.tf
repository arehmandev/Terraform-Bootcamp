variable "lc_name" {}

variable "instance_type" {}

variable "security_groups" {}

variable "azs" {
  type = "list"
}

variable "subnet_azs" {
  type = "list"
}

variable "key_name" {}

variable "asg_number_of_instances" {
  description = "The number of instances we want in the ASG"
  default     = 1
}

variable "asg_minimum_number_of_instances" {
  description = "The minimum number of instances the ASG should maintain"
  default     = 1
}

variable "asg_maximum_number_of_instances" {
  description = "The minimum number of instances the ASG should maintain"
  default     = 1
}

variable "health_check_grace_period" {
  description = "Number of seconds for a health check to time out"
  default     = 300
}

variable "health_check_type" {
  default = "EC2"
}
