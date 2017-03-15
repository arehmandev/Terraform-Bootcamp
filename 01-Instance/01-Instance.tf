resource "aws_instance" "web" {
  count                       = "${var.instance_count}"
  ami                         = "${data.aws_ami.amazon.id}"
  instance_type               = "${var.instance_size}"
  associate_public_ip_address = "true"
  user_data                   = "${data.template_file.node.rendered}"
  security_groups             = ["${aws_security_group.node.id}"]     # This parameter is submitted as a [list] even if only 1 reference

  tags {
    Name = "${var.instance_name}"
  }
}
