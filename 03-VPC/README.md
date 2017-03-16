This is a setup a 3 AZ VPC:

- 3 private subnets, each with its own route table, NAT gateway and associated route
- 3 public subnets, each with its own route table, Internet gateway and associated route

The Availability zones have been listed as maps in variables.tf

Homework:

How can I use a data source to look up the availability zones?
