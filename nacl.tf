# resource "aws_network_acl" "net_acl" {
#     vpc_id     = "${aws_vpc.terraform-vpc-vpc.id}"
#     subnet_ids = [aws_subnet.subnet-terraform-vpc-subnet-public2-us-west-1b.id, aws_subnet.subnet-terraform-vpc-subnet-public1-us-west-1c.id, aws_subnet.subnet-terraform-vpc-subnet-private1-us-west-1c.id, aws_subnet.subnet-terraform-vpc-subnet-private2-us-west-1b.id ]

#     ingress {
#         from_port  = 0
#         to_port    = 0
#         rule_no    = 100
#         action     = "allow"
#         protocol   = "-1"
#         cidr_block = "0.0.0.0/0"
#     }

#     egress {
#         from_port  = 0
#         to_port    = 0
#         rule_no    = 100
#         action     = "allow"
#         protocol   = "-1"
#         cidr_block = "0.0.0.0/0"
#     }

#     tags = {
#     }
# }