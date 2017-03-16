resource "aws_elb" "master" {
  name                      = "${var.instance_name}"
  subnets                   = ["${var.subnets}"]
  security_groups           = ["${var.security_groups}"]
  cross_zone_load_balancing = true

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
