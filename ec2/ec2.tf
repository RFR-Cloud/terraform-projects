data "aws_ami" "amazon_linux_arm" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-arm64"]
  }
}

resource "aws_instance" "project2_web" {
  ami           = data.aws_ami.amazon_linux_arm.id
  instance_type = "t4g.micro"

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.project2_web_sg.id
  ]

  tags = {
    Name = "project2-EC2"
  }
}


