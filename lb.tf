resource "aws_lb" "test" {
  name               = "desafio-infra-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web_sg.id]
  subnets            = [aws_subnet.public_2a.id, aws_subnet.public_2b.id]

  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}

resource "aws_lb_target_group" "test" {
  name     = "desafio-infra-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.some_custom_vpc.id
  target_type        = "instance"
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.test.arn
  port              = "80"
  protocol          = "HTTP"

   default_action {
    target_group_arn = aws_lb_target_group.test.id
    type             = "forward"
  }
}

resource "aws_lb_target_group_attachment" "tg_attachment_test" {
    target_group_arn = aws_lb_target_group.test.arn
    target_id        = aws_instance.web_instance.id
    port             = 80
}
resource "aws_lb_target_group_attachment" "tg_attachment_test1" {
    target_group_arn = aws_lb_target_group.test.arn
    target_id        = aws_instance.web_instance1.id
    port             = 80
}