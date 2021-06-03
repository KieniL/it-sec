# Create a VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  instance_tenancy     = "default"
  tags = {
    project = var.project
    Name    = "${var.project}-VPC"
  }
}
resource "aws_default_security_group" "ident" {
  vpc_id = aws_vpc.main.id

  ingress {
    protocol  = "tcp"
    self      = true
    from_port = 0
    to_port   = 22
  }

  egress {
    protocol  = "tcp"
    self      = true
    from_port = 0
    to_port   = 22
  }

}
