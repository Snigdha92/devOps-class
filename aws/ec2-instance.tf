resource "aws_instance" "my_instance" {
  ami             = "ami-053a45fff0a704a47"
  instance_type   = "t2.micro"
  subnet_id       = aws_subnet.my_subnet.id
  security_groups = [aws_security_group.my_sg.name]
  key_name        = "keypair"

  tags = {
    Name = "MyEC2Instance"
  }
}