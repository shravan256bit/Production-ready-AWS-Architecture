resource "aws_vpc" "name" {
  cidr_block = var.cidr_vpc
  enable_dns_hostnames = true
  enable_dns_support = true
}