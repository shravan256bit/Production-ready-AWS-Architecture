resource "aws_internet_gateway" "name" {
  vpc_id = aws_vpc.name.id
}