region = "eu-west-1"
awsprofile = "default"

vpcname = "abdulsvpc"
vpc_cidr = "10.0.0.0/16"

instance_size = "t2.micro"
instance_count = "1"
instance_name = "Abduls-instance"

key_name = "Abdulkey"

# 2 Private CIDRs
private1_cidr = "10.0.0.0/24"
private2_cidr = "10.0.1.0/24"
private3_cidr = "10.0.2.0/24"


# 2 Public CIDRs
public1_cidr  = "10.0.3.0/24"
public2_cidr  = "10.0.4.0/24"
public3_cidr  = "10.0.5.0/24"



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
