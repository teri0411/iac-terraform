resource "aws_launch_template" "iac-launch-temp" {
  name_prefix   = "iac-launch-temp"
  image_id = "ami-009726b835c24a3aa"
  instance_type = "t2.micro"
  user_data = filebase64("./userdata.sh")

  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [aws_security_group.publicweb.id]
    subnet_id                   = aws_subnet.subnet-terraform-vpc-subnet-public1-us-west-1c.id
  }
}