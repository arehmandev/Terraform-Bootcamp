resource "aws_eip" "node" {
  instance = "${aws_instance.web.id}"
  vpc      = true
}
