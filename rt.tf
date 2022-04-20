
resource "aws_route_table" "terraform-vpc-rtb-private2-us-west-1b" {
    vpc_id     = "${aws_vpc.terraform-vpc-vpc.id}"

    tags ={
        "Name" = "terraform-vpc-rtb-private2-us-west-1b"
    }
}

resource "aws_route_table" "terraform-vpc-rtb-public" {
    vpc_id     = "${aws_vpc.terraform-vpc-vpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.terraform-vpc-igw.id
    }

    tags ={
        "Name" = "terraform-vpc-rtb-public"
    }
}

resource "aws_route_table" "terraform-vpc-rtb-private1-us-west-1c" {
    vpc_id     = "${aws_vpc.terraform-vpc-vpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.nat-018fcaf904efe63ce.id}"
    }

    tags ={
        "Name" = "terraform-vpc-rtb-private1-us-west-1c"
    }
}


