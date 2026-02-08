provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "instance-01" {
  ami           = "ami-03ea746da1a2e36e7"
  instance_type = "t3.micro"
  security_groups = ["default"]
  key_name = "Ohio-Key"
  tags ={
    Name = "grafana-server"
  }
}

resource "aws_instance" "instance-02" {
  ami           = "ami-03ea746da1a2e36e7"
  instance_type = "t3.micro"
  security_groups = ["default"]
  key_name = "Ohio-Key"
  tags ={
    Name = "node-expo"
  }
}


