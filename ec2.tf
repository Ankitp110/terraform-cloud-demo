resource "aws_instance" "test3" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = var.instancetype
  //vpc_security_group_ids = ["sg-0e594a3fb2fc31ff6"]
  count = 3
  tags = {
    Name = var.ec2_names[count.index]
  }
}
