output "master_elb" {
  value = "${module.elb.elb_dns_name}"
}
