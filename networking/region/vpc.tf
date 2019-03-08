# Creating a VPC with CIDR , taking VPC as an input dynamically- 
# ${cidrsubnet(var.base_cidr_block, 4, lookup(var.region_numbers, var.region))}"

resource "aws_vpc" "cap-vpc" {
  cidr_block = "${cidrsubnet(var.base_cidr_block, 4, lookup(var.region_numbers, var.region))}"
}

resource "aws_internet_gateway" "main" {
  vpc_id = "${aws_vpc.cap-vpc.id}"
}
