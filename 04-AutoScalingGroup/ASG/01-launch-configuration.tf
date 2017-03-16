resource "aws_launch_configuration" "launch_config1" {
  name_prefix     = "${var.lc_name}"
  image_id        = "${data.aws_ami.amazon.image_id}"
  instance_type   = "${var.instance_type}"
  key_name        = "${var.key_name}"
  security_groups = ["${var.security_groups}"]
  user_data       = "${data.template_file.node.rendered}"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_launch_configuration" "launch_config2" {
  name_prefix     = "${var.lc_name}2"
  image_id        = "${data.aws_ami.amazon.image_id}"
  instance_type   = "${var.instance_type}"
  key_name        = "${var.key_name}"
  security_groups = ["${var.security_groups}"]
  user_data       = "${data.template_file.node2.rendered}"

  lifecycle {
    create_before_destroy = true
  }
}
