resource "aws_internet_gateway" "cap-igw" {
    vpc_id="${aws_vpc.cap-vpc.id}"
}
