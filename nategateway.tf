resource "aws_eip" "nat1" {
  domain = "vpc"
}
resource "aws_nat_gateway" "ngate-1" {
  subnet_id     = aws_subnet.public-sub1.id
  allocation_id = aws_eip.nat1.id

}
resource "aws_eip" "nat2" {
  domain = "vpc"
}
resource "aws_nat_gateway" "ngate-2" {
  subnet_id     = aws_subnet.public-sub2.id
  allocation_id = aws_eip.nat2.id

}