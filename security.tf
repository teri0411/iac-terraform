
# sg
resource "aws_security_group" "publicweb" {
    name        = "publicweb"
    description = "publicweb"
    vpc_id      = "${aws_vpc.terraform-vpc-vpc.id}"

    ingress {
        from_port       = 80
        to_port         = 80
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    ingress {
        from_port       = 443
        to_port         = 443
        protocol        = "tcp"
        cidr_blocks     = ["0.0.0.0/0"]
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

}

resource "aws_security_group" "db-security" {
    name        = "db-security"
    description = "db-security"
    vpc_id      = "${aws_vpc.terraform-vpc-vpc.id}"

    ingress {
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        security_groups = [ aws_security_group.publicweb.id ]
        self            = false
    }


    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

}

#subnet
resource "aws_subnet" "subnet-terraform-vpc-subnet-public2-us-west-1b" {
    vpc_id                  = "${aws_vpc.terraform-vpc-vpc.id}"
    cidr_block              = "10.0.11.0/24"
    availability_zone       = "us-west-1b"
    map_public_ip_on_launch = false

    tags ={
        Name = "terraform-vpc-subnet-public2-us-west-1b"
    }
}

resource "aws_subnet" "subnet-terraform-vpc-subnet-public1-us-west-1c" {
    vpc_id                  = "${aws_vpc.terraform-vpc-vpc.id}"
    cidr_block              = "10.0.10.0/24"
    availability_zone       = "us-west-1c"
    map_public_ip_on_launch = false

    tags ={
        Name = "terraform-vpc-subnet-public1-us-west-1c"
    }
}

resource "aws_subnet" "subnet-terraform-vpc-subnet-private1-us-west-1c" {
    vpc_id                  = "${aws_vpc.terraform-vpc-vpc.id}"
    cidr_block              = "10.0.12.0/24"
    availability_zone       = "us-west-1c"
    map_public_ip_on_launch = false

    tags ={
        Name = "terraform-vpc-subnet-private1-us-west-1c"
    }
}


resource "aws_subnet" "subnet-terraform-vpc-subnet-private2-us-west-1b" {
    vpc_id                  = "${aws_vpc.terraform-vpc-vpc.id}"
    cidr_block              = "10.0.13.0/24"
    availability_zone       = "us-west-1b"
    map_public_ip_on_launch = false

    tags ={
        Name = "terraform-vpc-subnet-private2-us-west-1b"
    }
}



