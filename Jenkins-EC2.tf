resource "aws_instance" "jenkins" {
  ami           = "ami-06640050dc3f556bb"
  instance_type = "t2.small"

  tags = {
    Name = "Jenkins"
  }
}