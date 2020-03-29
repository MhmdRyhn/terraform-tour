resource "aws_sunbet" "public_subnet" {
  count             = "${length(var.public_subnets_cidr)}"
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "${data.aws_availability_zones.available.name[count.index]}"
  cidr_block        = "${var.public_subnets_cidr[count.index]}"

  tags {
    Name = "${var.env}-public-subnet-${count.index + 1}"
  }
}

resource "aws_sunbet" "web_public_subnet" {
  count             = "${length(var.web_subnets_cidr)}"
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "${data.aws_availability_zones.available.name[count.index]}"
  cidr_block        = "${var.web_subnets_cidr[count.index]}"

  tags {
    Name = "${var.env}-web-public-subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "app_private_sunbet" {
  count             = "${length(var.app_subnets_cidr)}"
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "${data.aws_availability_zones.available.name[count.index]}"
  cidr_block        = "${var.app_subnets_cidr[count.index]}"

  tags {
    Name = "${var.env}-app-private-sunbet-${count.index + 1}"
  }
}

resource "aws_subnet" "db_private_sunbet" {
  count             = "${length(var.db_subnets_cidr)}"
  vpc_id            = "${aws_vpc.main.id}"
  availability_zone = "${data.aws_availability_zones.available.name[count.index]}"
  cidr_block        = "${var.db_subnets_cidr[count.index]}"

  tags {
    Name = "${var.env}-db-private-sunbet-${count.index + 1}"
  }
}
