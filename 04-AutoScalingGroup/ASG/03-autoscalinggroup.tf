resource "aws_autoscaling_group" "group1" {
  depends_on = ["aws_launch_configuration.launch_config1"]
  name       = "${var.lc_name}"

  availability_zones  = ["${var.azs}"]
  vpc_zone_identifier = ["${var.subnet_azs}"]

  launch_configuration = "${aws_launch_configuration.launch_config1.id}"

  max_size                  = "${var.asg_maximum_number_of_instances}"
  min_size                  = "${var.asg_minimum_number_of_instances}"
  desired_capacity          = "${var.asg_number_of_instances}"
  health_check_grace_period = "${var.health_check_grace_period}"
  health_check_type         = "${var.health_check_type}"

  tag {
    key                 = "Name"
    value               = "$[var.lc_name]"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "group2" {
  depends_on = ["aws_launch_configuration.launch_config2"]
  name       = "${var.lc_name}"

  availability_zones  = ["${var.azs}"]
  vpc_zone_identifier = ["${var.subnet_azs}"]

  launch_configuration = "${aws_launch_configuration.launch_config2.id}"

  max_size                  = "${var.asg_maximum_number_of_instances}"
  min_size                  = "${var.asg_minimum_number_of_instances}"
  desired_capacity          = "${var.asg_number_of_instances}"
  health_check_grace_period = "${var.health_check_grace_period}"
  health_check_type         = "${var.health_check_type}"

  tag {
    key                 = "Name"
    value               = "$[var.lc_name]"
    propagate_at_launch = true
  }
}
