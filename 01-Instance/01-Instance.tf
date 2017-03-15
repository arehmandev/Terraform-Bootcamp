resource "aws_instance" "web" {
  count                       = "${var.instance_count}"
  ami                         = "${data.aws_ami.amazon.id}"
  instance_type               = "${var.instance_size}"
  associate_public_ip_address = "true"
  user_data                   = "${data.template_file.node.rendered}"
  security_groups             = ["${aws_security_group.node.name}"]   # This parameter is submitted as a [list] even if only 1 reference
  key_name                    = "${var.key_name}"

  tags {
    Name = "${var.instance_name}"
  }
}

resource "aws_key_pair" "auth" {
  key_name   = "${var.key_name}"
  public_key = "${file(var.public_key_path)}"
}
