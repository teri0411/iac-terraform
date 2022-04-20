resource "aws_launch_template" "iac-launch-temp" {
  name_prefix   = "iac-launch-temp"
  image_id = "ami-009726b835c24a3aa"
  instance_type = "t2.micro"
  user_data = filebase64("${path.module}/userdata.sh")
}

resource "aws_autoscaling_group" "terraform-autoscaling" {
    desired_capacity          = 2
    health_check_grace_period = 200
    health_check_type         = "EC2"
    max_size                  = 10
    min_size                  = 2
    name                      = "terraform-autoscaling"
    vpc_zone_identifier       = [ aws_subnet.subnet-terraform-vpc-subnet-public2-us-west-1b.id, aws_subnet.subnet-terraform-vpc-subnet-public1-us-west-1c.id]



  launch_template {
    id      = aws_launch_template.iac-launch-temp.id
    version = "$Latest"
  }
} 
resource "aws_autoscaling_attachment" "asg_attachment" {
  autoscaling_group_name = "${aws_autoscaling_group.terraform-autoscaling.id}"
  alb_target_group_arn = "${aws_lb_target_group.tg-terraform2.arn}"
} 

resource "aws_autoscaling_policy" "custom-cpu-policy" {
  name                   = "custom-cpu-policy"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = aws_autoscaling_group.terraform-autoscaling.name
  policy_type            = "SimpleScaling"
}
