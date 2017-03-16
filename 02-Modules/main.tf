provider "aws" {
  region  = "${var.region}"
  profile = "${var.awsprofile}"
}

module "elb" {
  source          = "./ELB"
  region          = "${var.region}"
  instance_name   = "${var.instance_name}"
  instances       = ["${module.instances.web1}", "${module.instances.web2}"]
  security_groups = "${module.security.secgroup}"
  subnetaz1       = "${var.subnetaz1}"
  subnetaz2       = "${var.subnetaz2}"
  subnetaz3       = "${var.subnetaz3}"
}

module "instances" {
  source          = "./Instances"
  instance_size   = "${var.instance_size}"
  instance_name   = "${var.instance_name}"
  security_groups = "${module.security.secgroupname}"
  key_name        = "${var.key_name}"
  public_key_path = "${path.cwd}/Keys/demokey.pub"
  subnetaz1       = "${var.subnetaz1}"
  subnetaz2       = "${var.subnetaz2}"
  subnetaz3       = "${var.subnetaz3}"
  private1_cidr   = "${var.private1_cidr}"
  private2_cidr   = "${var.private2_cidr}"
  private3_cidr   = "${var.private3_cidr}"
  public1_cidr    = "${var.public1_cidr}"
  public2_cidr    = "${var.public2_cidr}"
  public3_cidr    = "${var.public3_cidr}"
}

module "security" {
  source = "./SecurityGroups"
}
