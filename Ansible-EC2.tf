resource "aws_instance" "ansible" {
  ami                    = "ami-06640050dc3f556bb"
  instance_type          = "t2.micro"
  user_data              = file("user_data.sh")
  key_name               = aws_key_pair.for_all_ec2.key_name
  vpc_security_group_ids = [aws_security_group.sg-mvn.id]
  tags = {
    Name = "Ansible"
  }
}