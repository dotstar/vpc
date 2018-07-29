
resource "aws_instance" "example" {
   ami = "ami-40142d25"
   instance_type = "t2.micro"
   # security_groups = [ "${aws_security_group.ssh_all.id}" ]
    
   tags {
      project = "vpc"
      cddtype = "junk"
   }
}


