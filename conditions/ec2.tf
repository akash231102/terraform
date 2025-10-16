resource "aws_instance" "terraform"{
    ami="ami-09c813fb71547fc4f"
    vpc_security_group_ids=[aws_security_group.allow-all.id]
    instance_type= var.environment == "dev" ? "t3.medium" : "t3.small"
    tags = {
        Name = "terraform-1"
        Terraform = "true"
    }
}

resource "aws_security_group" "allow-all"{
    name="allow-all"

  egress {
    from_port        = 0  # from port 0 to to port 0 means all ports
    to_port          = 0
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"]  #internet
  }

  ingress {
    from_port        = 0  # from port 0 to to port 0 means all ports
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    tags = {
        Name = "allow_all"
    }
}