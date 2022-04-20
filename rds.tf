resource "aws_db_subnet_group" "db-subnet" {
    name        = "db-subnet"
    description = "db-subnet"
    subnet_ids  = [aws_subnet.subnet-terraform-vpc-subnet-private1-us-west-1c.id, aws_subnet.subnet-terraform-vpc-subnet-private2-us-west-1b.id]
}

resource "aws_db_instance" "terraformtest-db" {
    identifier                = "terraformtest-db"
    allocated_storage         = 20
    storage_type              = "gp2"
    engine                    = "mysql"
    engine_version            = "8.0.28"
    instance_class            = "db.t2.micro"
    name                      = ""
    username                  = "admin"
    password                  = "xxxxxxxx"
    port                      = 3306
    publicly_accessible       = false
    availability_zone         = "us-west-1c"
    security_group_names      = []
    vpc_security_group_ids    = ["${aws_security_group.db-security.id}" ]
    db_subnet_group_name      = "${aws_db_subnet_group.db-subnet.id}"
    parameter_group_name      = "default.mysql8.0"
    multi_az                  = false
    backup_retention_period   = 7
    backup_window             = "07:38-08:08"
    maintenance_window        = "fri:10:28-fri:10:58"
    final_snapshot_identifier = "terraformtest-db-final"
}
