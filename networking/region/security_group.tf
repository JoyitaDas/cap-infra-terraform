# Security Group associated with VPC
resource "aws_security_group" "cap-sg" {
    name = "cap-sg"
    description="Security group listing ports allowed the SSH and HHTP ports."
    vpc_id="${aws_vpc.cap-vpc.id}"

    ingress{
        type = "ingress"
        protocol="http"
        ## Add ports for TCP, HTTP, SSH and ports for ADOP
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
