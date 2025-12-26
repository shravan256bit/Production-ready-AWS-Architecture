resource "aws_subnet" "public-sub1" {
  vpc_id = aws_vpc.name.id
  cidr_block = var.cidr_ps-1
  availability_zone = var.availability_zone1
  map_public_ip_on_launch = true
}
resource "aws_subnet" "public-sub2" {
  vpc_id = aws_vpc.name.id
  cidr_block = var.cidr_ps-2
  availability_zone = var.availability_zone2
  map_public_ip_on_launch = true
}
resource "aws_subnet" "private-sub1" {
  vpc_id = aws_vpc.name.id
  cidr_block = var.cidr_prs-1
  availability_zone = var.availability_zone1
  map_public_ip_on_launch = true
}
resource "aws_subnet" "private-sub2" {
  vpc_id = aws_vpc.name.id
  cidr_block = var.cidr_prs-2
  availability_zone = var.availability_zone2
  map_public_ip_on_launch = true
}