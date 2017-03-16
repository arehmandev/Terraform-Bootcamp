output "web1" {
  value = "${aws_instance.web.id}"
}

output "web2" {
  value = "${aws_instance.web2.id}"
}
