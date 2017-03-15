data "template_file" "node" {
  template = "${file("${path.module}/Userdata/userdata.sh")}"
}

data "aws_ami" "amazon" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # Amazon
}

# These details were found in this command:
# aws ec2 describe-images --owners amazon --filters "Name=virtualization-type, Values=hvm" "Name=image-id, Values=ami-70edb016"

