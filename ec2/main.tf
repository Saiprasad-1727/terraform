# This is a Terraform configuration file for creating an AWS EC2 instance.
# It includes the following resources:  
# 1. AWS Security Group: Allows SSH and HTTP traffic.
#resource "aws_security_group" "sg" {
 # name        = "jenkins-sg"
 # description = "Allow SSH and HTTP traffic"

 # ingress {
  #  from_port   = 22
  #  to_port     = 22
  #  protocol    = "tcp"
  #  cidr_blocks = ["0.0.0.0/16"]
  #  description = "Allow SSH access"
  #}
  #egress {
  #from_port   = 80
  #to_port     = 80
  #protocol    = "tcp"
 # cidr_blocks = ["0.0.0.0/16"]
#}
#}
# 2. AWS Key Pair: Creates a key pair for SSH access to the instance.

resource "aws_key_pair" "my_key" {
    key_name   = "my-key"
    public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJjZFOyeAiyJAQ6rW/7RHOnf16dA+X5t/fNJ2DFWoum8 annam@Annamsaiprasad"
}
# 3. AWS EC2 Instance: Creates an EC2 instance with the specified AMI and instance type.
resource "aws_instance" "example" {
    ami = "ami-0e35ddab05955cf57"
    instance_type = var.instance_type_value
    key_name = aws_key_pair.my_key.key_name
    // security_groups = var.security_groups
    tags = {
        Name = "jenkins"
    }
}
