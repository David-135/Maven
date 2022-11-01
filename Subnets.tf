resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.maven_project_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Maven_Project_Subnet"
  }
}