resource "aws_vpc" "main" {
  cidr_block       = "10.0.1.0/24"
  instance_tenancy = "dedicated"

  tags {
    Name = "main"
    project = "vpc"
    cddtype = "junk"
  }
}
