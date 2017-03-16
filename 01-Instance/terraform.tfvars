region = "eu-west-1"
awsprofile = "default"

instance_size = "t2.micro"
instance_count = "1"
instance_name = "Abduls-instance"
security_group_name = "Abduls-sg"

key_name = "Abdulkey"

# Subnet Availability zones
subnetaz1 = {
  us-east-1 = "us-east-1a"
  us-east-2 = "us-east-2a"
  us-west-2 = "us-west-2a"
  eu-west-1 = "eu-west-1a"
}

subnetaz2 = {
  us-east-1 = "us-east-1c"
  us-east-2 = "us-east-2b"
  us-west-2 = "us-west-2b"
  eu-west-1 = "eu-west-1b"

}

subnetaz3 = {
  us-east-1 = "us-east-1d"
  us-east-2 = "us-east-2c"
  us-west-2 = "us-west-2c"
  eu-west-1 = "eu-west-1c"

}
