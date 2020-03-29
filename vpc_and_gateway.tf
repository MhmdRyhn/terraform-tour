# AWS VPC and Internet Gateway 

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cird

  tags {
    Name = "${var.env}-vpc"
  }
}

resource "aws_internet_gateway" "default_igw" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "${var.env}-default-igw"
  }
}

resource "aws_nat_gateway" "default_ngw" {
  allocation_id = "${aws_eip.nat_gateway_eip}"
  subnet_id     = "${element(aws_subnet.public_subnet.*.id, 0)}"

  tags {
    Name = "${var.env}-default-ngw"
  }
}

