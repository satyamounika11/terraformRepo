# Create the EC2 instance
resource "aws_instance" "ubuntu_server" {
  ami           = "ami-0914547665e6a707c"
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