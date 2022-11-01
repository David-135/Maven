resource "aws_instance" "kubernetes" {
  ami           = "ami-06640050dc3f556bb"
  instance_type = "t2.small"

  tags = {
    Name = "Kubernetes"
  }
}