resource "aws_vpc" "main" {
  cidr_block       = "10.0.1.0/24"
  # instance_tenancy = "dedicated"
  tags {
    Name = "main"
    project = "vpc"
    cddtype = "junk"
  }
}


resource "aws_security_group" "ssh_all" {
  description = "Allow all inbound ssh traffic"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    # prefix_list_ids = ["pl-12c4e678"]
  }
  tags {
    Name = "ssh_all"
    project = "vpc"
    cddtype = "junk"
  }
}

