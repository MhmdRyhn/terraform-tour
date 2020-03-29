resource "aws_route_table" "public_rt" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.default_igw.id}"
  }

  tags {
    Name = "${var.env}-public-rt"
  }
}

resource "aws_route_table_association" "public_rt_with_public_sunbet" {
  count          = "${length(var.public_subnets_cidr)}"
  subnet_id      = "${element(aws_sunbet.public_subnet.*.id, count.index)}"
  route_table_id = "${aws_route_table.public_rt}"
}

resource "aws_route_table" "web_rt" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.default_igw.id}"
  }

  tags {
    Name = "${var.env}-web-rt"
  }
}

resource "aws_route_table_association" "web_rt_with_web_public_sunbet" {
  count          = "${length(var.web_subnets_cidr)}"
  subnet_id      = "${element(aws_sunbet.web_public_subnet.*.id, count.index)}"
  route_table_id = "${aws_route_table.web_rt}"
}

resource "aws_route_table" "app_rt" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.default_ngw.id}"
  }

  tags {
    Name = "${var.env}-app-rt"
  }
}

resource "aws_route_table_association" "app_rt_with_app_private_sunbet" {
  count          = "${length(var.app_subnets_cidr)}"
  subnet_id      = "${element(aws_sunbet.app_private_sunbet.*.id, count.index)}"
  route_table_id = "${aws_route_table.app_rt}"
}

resource "aws_route_table" "db_rt" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.default_ngw.id}"
  }

  tags {
    Name = "${var.env}-db-rt"
  }
}

resource "aws_route_table_association" "app_rt_with_db_private_sunbet" {
  count          = "${length(var.db_subnets_cidr)}"
  subnet_id      = "${element(aws_sunbet.db_private_sunbet.*.id, count.index)}"
  route_table_id = "${aws_route_table.db_rt}"
}
