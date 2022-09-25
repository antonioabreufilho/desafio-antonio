resource "aws_instance" "web_instance" {
  ami           = "ami-08e2d37b6a0129927"
  instance_type = "t3.micro"
  key_name      = "wy-a4f84a230c77"

  subnet_id                   = aws_subnet.public_2a.id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  user_data = file("script.sh")
  tags = var.tags
}

resource "aws_instance" "web_instance1" {
  ami           = "ami-08e2d37b6a0129927"
  instance_type = "t3.micro"
  key_name      = "wy-a4f84a230c77"

  subnet_id                   = aws_subnet.public_2b.id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  user_data = file("script.sh")
  tags = var.tags
}
