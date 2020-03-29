resource "aws_eip" "nat_gateway_eip" {
  vpc = true

  tags {
    Name = "${var.env}-nat-gateway-eip"
  }
}
