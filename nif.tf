# resource "aws_network_interface" "one" {
#     subnet_id         = aws_subnet.subnet-terraform-vpc-subnet-public1-us-west-1a.id
#     private_ips       = ["10.0.10.149"]
#     security_groups   = [aws_security_group.publicweb.id, aws_security_group.db-security.id]
#     source_dest_check = true
# }

# resource "aws_network_interface" "two" {
#     subnet_id         = aws_subnet.subnet-terraform-vpc-subnet-public1-us-west-1a.id
#     private_ips       = ["10.0.10.71"]
#     security_groups   = [aws_security_group.publicweb.id]
#     source_dest_check = true
#     attachment {
#         instance     = "i-0367db8e0f37e2373"
#         device_index = 0
#     }
# }

# resource "aws_network_interface" "three" {
#     subnet_id         = aws_subnet.subnet-terraform-vpc-subnet-private1-us-west-1a.id
#     private_ips       = ["10.0.12.9"]
#     security_groups   = [aws_security_group.db-security.id]
#     source_dest_check = true
# }

# resource "aws_network_interface" "four" {
#     subnet_id         = aws_subnet.subnet-terraform-vpc-subnet-public1-us-west-1a.id
#     private_ips       = ["10.0.10.150"]
#     security_groups   = []
#     source_dest_check = false
# }

# resource "aws_network_interface" "five" {
#     subnet_id         = aws_subnet.subnet-terraform-vpc-subnet-public2-us-west-1b.id
#     private_ips       = ["10.0.11.198"]
#     security_groups   = [aws_security_group.publicweb.id]
#     source_dest_check = true
#     attachment {
#         instance     = "i-0bb66ea95fe84e33e"
#         device_index = 0
#     }
# }

# resource "aws_network_interface" "six" {
#     subnet_id         = aws_subnet.subnet-terraform-vpc-subnet-public2-us-west-1b.id
#     private_ips       = ["10.0.11.173"]
#     security_groups   = [aws_security_group.publicweb.id, aws_security_group.db-security.id]
#     source_dest_check = true
# }

