# Security group for both Target and Redirector server
resource "aws_security_group" "common_security_group" {

  name = "common-security-group"

  description = "This security group is for the target and redirector EC2 Instances"

  # Ingress SSH
  ingress {

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  # Ingress HTTP
  ingress {

    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  # Egress everywhere
  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

}

# Security group for Target
resource "aws_security_group" "vnc_security_group" {

  name = "vnc-security-group"

  description = "This security group is for the target"

  # Ingress SSH
  ingress {

    from_port   = 5901
    to_port     = 5901
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  # Egress everywhere
  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

}





# Security group for C2-server
resource "aws_security_group" "c2_security_group" {

  name = "c2-security-group"

  description = "This security group is for the target and redirector EC2 Instances"

  # Ingress SSH
  ingress {

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  # Ingress HTTPS
  ingress {

    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  # Ingress HTTP
  ingress {

    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  # Ingress for Remmina 
  ingress {

    from_port   = 5901
    to_port     = 5901
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  # Egress everywhere
  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }


}