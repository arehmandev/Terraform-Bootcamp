provider "aws" {
  region  = "${var.region}"
  profile = "${var.awsprofile}"
}

resource "aws_key_pair" "auth" {
  key_name   = "${var.key_name}"
  public_key = "${file("${path.cwd}/Keys/demokey.pub")}"
}

module vpc {
  source        = "./VPC"
  region        = "${var.region}"
  awsprofile    = "${var.awsprofile}"
  vpcname       = "${var.vpcname}"
  subnetaz1     = "${var.subnetaz1}"
  subnetaz2     = "${var.subnetaz2}"
  subnetaz3     = "${var.subnetaz3}"
  private1_cidr = "${var.private1_cidr}"
  private2_cidr = "${var.private2_cidr}"
  private3_cidr = "${var.private3_cidr}"
  public1_cidr  = "${var.public1_cidr}"
  public2_cidr  = "${var.public2_cidr}"
  public3_cidr  = "${var.public3_cidr}"
  vpc_cidr      = "${var.vpc_cidr}"
}

module "asg" {
  source          = "./ASG"
  lc_name         = "${var.lc_name}"
  instance_type   = "${var.instance_size}"
  security_groups = "${module.security.secgroup}"
  azs             = ["${lookup(var.subnetaz1, var.region)}", "${lookup(var.subnetaz2, var.region)}", "${lookup(var.subnetaz3, var.region)}"]
  subnet_azs      = ["${module.vpc.aws_subnet.public1.id}", "${module.vpc.aws_subnet.public2.id}", "${module.vpc.aws_subnet.public3.id}"]
  key_name        = "${var.key_name}"
  master_elb      = "${module.elb.elb_name}"
}

module "security" {
  source = "./SecurityGroups"
  vpcid  = "${module.vpc.aws_vpc.id}"
}

module "elb" {
  source          = "./ELB"
  instance_name   = "${var.instance_name}"
  subnets         = ["${module.vpc.aws_subnet.public1.id}", "${module.vpc.aws_subnet.public2.id}", "${module.vpc.aws_subnet.public3.id}"]
  security_groups = "${module.security.secgroup}"
  region          = "${var.region}"
  subnetaz1       = "${var.subnetaz1}"
  subnetaz2       = "${var.subnetaz2}"
  subnetaz3       = "${var.subnetaz3}"
}
