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
  public_key_path = "${var.public_key_path}"
  subnetaz1       = "${var.subnetaz1}"
  subnetaz2       = "${var.subnetaz2}"
  subnetaz3       = "${var.subnetaz3}"
}

module "security" {
  source = "./SecurityGroups"
}
