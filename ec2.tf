# Find the latest Ubuntu 22.02 AMI
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Create the EC2 instance
resource "aws_instance" "ubuntu_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  # Add a tag for easier identification
  tags = {
    Name = "MouniUbuntuVM"
  }

  # Attach a 30GB gp2 EBS volume
  root_block_device {
    volume_type = "gp2"
    volume_size = 30
  }
}