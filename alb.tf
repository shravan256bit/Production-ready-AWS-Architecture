resource "aws_lb" "alb" {
  internal           = false
  security_groups    = [aws_security_group.alb-sg.id]
  load_balancer_type = "application"
  subnets            = [aws_subnet.public-sub1.id, aws_subnet.public-sub2.id]
}
resource "aws_lb_target_group" "name" {
  vpc_id   = aws_vpc.name.id
  port     = 80
  protocol = "HTTP"
}
resource "aws_lb_listener" "tglis" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.name.arn
  }
}