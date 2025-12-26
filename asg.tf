resource "aws_launch_template" "alt" {
  image_id               = var.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.alb-sg.id]
  user_data              = base64encode(file("userdata.sh"))

}

resource "aws_autoscaling_group" "asg" {

  vpc_zone_identifier       = [aws_subnet.private-sub1.id, aws_subnet.private-sub2.id]
  max_size                  = 5
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 2
  target_group_arns         = [aws_lb_target_group.name.arn]

  launch_template {
    id      = aws_launch_template.alt.id
    version = "$Latest"
  }
}