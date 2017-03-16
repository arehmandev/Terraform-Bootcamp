resource "aws_instance" "web" {
  count                       = "1"
  ami                         = "${data.aws_ami.amazon.id}"
  instance_type               = "${var.instance_size}"
  associate_public_ip_address = "true"
  user_data                   = "${data.template_file.node.rendered}"
  security_groups             = ["${var.security_groups}"]            # This parameter is submitted as a [list] even if only 1 reference
  key_name                    = "${var.key_name}"

  tags {
    Name = "${var.instance_name}-1"
  }
}

resource "aws_instance" "web2" {
  count                       = "1"
  ami                         = "${data.aws_ami.amazon.id}"
  instance_type               = "${var.instance_size}"
  associate_public_ip_address = "true"
  user_data                   = "${data.template_file.node2.rendered}"
  security_groups             = ["${var.security_groups}"]             # This parameter is submitted as a [list] even if only 1 reference
  key_name                    = "${var.key_name}"

  tags {
    Name = "${var.instance_name}-2"
  }
}

resource "aws_key_pair" "auth" {
  key_name   = "${var.key_name}"
  public_key = "${file(var.public_key_path)}"
}
