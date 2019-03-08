#Store all the variables that are used for this terraform project
variable "accecss_key" {
  description= "Add the AWS access keys to be used to for the AWS account"  
}

variable "secret_key" {
  description="Add the AWS Secret keys to be used for the AWS account"
}


variable "region" {
  description="The name of the AWS region to setup the infrastructure within"
}
variable "base_cidr_block" {}

variable "availability_zone" {}

variable "region_numbers" {
  default = {
    us-east-1 = 1
    us-west-1 = 2
    us-west-2 = 3
    eu-west-1 = 4
  }
}
variable "az_numbers" {
  default = {
    a = 1
    b = 2
    c = 3
    d = 4
    e = 5
    f = 6
    g = 7
    h = 8
    i = 9
    j = 10
    k = 11
    l = 12
    m = 13
    n = 14
  }
}