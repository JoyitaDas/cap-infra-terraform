variable "vpc_id" {}

variable "availability_zone" {}

data "aws_vpc" "target" {
  id="${var.vpc_id}"
}