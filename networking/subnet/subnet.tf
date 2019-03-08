## creating the public ad private subnet

resource "aws_subnet" "main" {
    vpc_id="${var.vpc_id}"
    cidr_block="${cidrsubnet(data.aws_vpc.target.cidr_block, 4, 1)}"
    availability_zone="${var.availability_zone}"
}

resource "aws_route_table" "main" {
    vpc_id="${var.vpc_id}"
}

resource "aws_route_table_association" "main" {
    subnet_id="${aws_subnet.main.id}"
    route_table_id="${aws_route_table.main.id}"
}

