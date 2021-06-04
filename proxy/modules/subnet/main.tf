data "aws_availability_zones" "available" {}

resource "aws_subnet" "public" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_cidr
  availability_zone       = "${data.aws_availability_zones.available.names[count.index]}"
  map_public_ip_on_launch = false
  depends_on              = [aws_vpc.main]

  tags = {
    project = var.project
    state   = "public"
  }
}