resource "aws_security_group" "node" {
  name        = "${var.security_group_name}"
  description = "Allow all inbound traffic"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ### A weird exception - allowing ICMP (pinging of the instance)
  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ### Egress rule - allow all traffic out
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"          # For all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
}
