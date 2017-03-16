resource "aws_elb" "master" {
  name                      = "${var.instance_name}"
  instances                 = ["${var.instances}"]                                                                                                     # This parameter is a list in the variables.tf - exported to the outer module main.tf
  security_groups           = ["${var.security_groups}"]
  cross_zone_load_balancing = true
  availability_zones        = ["${lookup(var.subnetaz1, var.region)}", "${lookup(var.subnetaz2, var.region)}", "${lookup(var.subnetaz3, var.region)}"]

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  listener {
    instance_port     = 80
    instance_protocol = "tcp"
    lb_port           = 80
    lb_protocol       = "tcp"
  }

  tags {
    Name      = "${var.instance_name}"
    builtWith = "terraform"
  }
}
