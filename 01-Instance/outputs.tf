output "elb_dns_name" {
  value = "${aws_elb.master.dns_name}"
}
