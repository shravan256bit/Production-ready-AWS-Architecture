resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.name.id
  route {
    cidr_block = var.cidr-net
    gateway_id = aws_internet_gateway.name.id
  }
}
resource "aws_route_table_association" "rt1p" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id      = aws_subnet.public-sub1.id
}
resource "aws_route_table_association" "rt2p" {
  route_table_id = aws_route_table.public-rt.id
  subnet_id      = aws_subnet.public-sub2.id
}

resource "aws_route_table" "private-rt-1" {
  vpc_id = aws_vpc.name.id
  route {
    cidr_block     = var.cidr-net
    nat_gateway_id = aws_nat_gateway.ngate-1.id
  }
}
resource "aws_route_table_association" "rt1pr" {
  route_table_id = aws_route_table.private-rt-1.id
  subnet_id      = aws_subnet.private-sub1.id
}
resource "aws_route_table" "private-rt-2" {
  vpc_id = aws_vpc.name.id
  route {
    cidr_block     = var.cidr-net
    nat_gateway_id = aws_nat_gateway.ngate-2.id
  }
}

resource "aws_route_table_association" "rt2pr" {
  route_table_id = aws_route_table.private-rt-2.id
  subnet_id      = aws_subnet.private-sub2.id
}
