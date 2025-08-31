resource "aws_instance" "my_instance" {
  ami           = "${var.ami}" # Example AMI ID
  instance_type = var.instance_type
  count         = var.instance_count

  tags = {
    Name = "server-1"
  }
}
