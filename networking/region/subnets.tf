module "cap-public-subnet" {
  source = "../subnet"
  vpc_id = "${aws_vpc.cap-vpc.id}"
  availability_zone="${var.availability_zone}"  
}

module "cap-private-subnet" {
  source = "../subnet"
  vpc_id = "${aws_vpc.cap-vpc.id}"
  availability_zone = "${var.availability_zone}"
  
}

