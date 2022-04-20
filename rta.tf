resource "aws_route_table_association" "terraform-vpc-rtb-private2-us-west-1b" {
    route_table_id = aws_route_table.terraform-vpc-rtb-private2-us-west-1b.id
    subnet_id = aws_subnet.subnet-terraform-vpc-subnet-private2-us-west-1b.id
}

resource "aws_route_table_association" "terraform-vpc-rtb-public" {
    route_table_id = aws_route_table.terraform-vpc-rtb-public.id
    subnet_id = aws_subnet.subnet-terraform-vpc-subnet-public2-us-west-1b.id
}

resource "aws_route_table_association" "terraform-vpc-rtb-public2" {
    route_table_id = aws_route_table.terraform-vpc-rtb-public.id
    subnet_id = aws_subnet.subnet-terraform-vpc-subnet-public1-us-west-1c.id
}

resource "aws_route_table_association" "terraform-vpc-rtb-private1-us-west-1c" {
    route_table_id = aws_route_table.terraform-vpc-rtb-private1-us-west-1c.id
    subnet_id = aws_subnet.subnet-terraform-vpc-subnet-private1-us-west-1c.id
}

