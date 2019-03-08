#adding the provider for easy access of AWS
provider "aws" {
    access_key="${var.accecss_key}"
    secret_key="${var.secret_key}"
    region="${var.region}"  
}
