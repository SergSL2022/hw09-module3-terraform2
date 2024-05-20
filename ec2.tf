data "aws_ami" "ubuntu_24_04_latest" {
  most_recent      = true
  owners           = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


resource "aws_instance" "public-server" {
  ami           = data.aws_ami.ubuntu_24_04_latest.id
  instance_type = "t3.micro"
  root_block_device {
    volume_size = 10
  }
  subnet_id     = module.vpc.public_subnet_ids[0]
  vpc_security_group_ids = [aws_security_group.slipchuk-public.id]
  key_name = "slipchuk-aws-ec2"

  tags = {
    Name  = "slipchuk public server"
    Owner = "slipchuk"
  }
}

resource "aws_instance" "private-server" {
  ami           = data.aws_ami.ubuntu_24_04_latest.id
  instance_type = "t3.micro"
  root_block_device {
    volume_size = 10
  }
  subnet_id     = module.vpc.private_subnet_ids[0]
  vpc_security_group_ids = [aws_security_group.slipchuk-private.id]
  key_name = "slipchuk-aws-ec2"

  tags = {
    Name  = "slipchuk private server"
    Owner = "slipchuk"
  }
}