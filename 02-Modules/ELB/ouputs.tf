# outputs
output "elb_id" {
  value = "${aws_elb.master.id}"
}

output "elb_name" {
  value = "${aws_elb.master.name}"
}

output "elb_dns_name" {
  value = "${aws_elb.master.dns_name}"
}
