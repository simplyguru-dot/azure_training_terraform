provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "training-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = var.az

  tags = {
    Name = "training-example"
  }
}

resource "aws_network_interface" "vm" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "instance" {
  ami           = var.ami # us-east-1
  instance_type = var.ec2-type

    tags = {
    Name = "azure-training-ec2"
  }

  network_interface {
    network_interface_id = aws_network_interface.vm.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}
