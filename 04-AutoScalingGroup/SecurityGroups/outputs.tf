output "secgroup" {
  value = "${aws_security_group.node.id}"
}

output "secgroupname" {
  value = "${aws_security_group.node.name}"
}
