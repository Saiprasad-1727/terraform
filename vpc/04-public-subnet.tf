resource "aws_subnet" "public_subnet-1" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = "10.0.1.0/24"
    availability_zone = "us-west-2a"
    map_public_ip_on_launch = true

    tags = {
        Name = "public_subnet-01"
    }
}
resource "aws_subnet" "public_subnet-2" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = "10.0.2.0/24"
    availability_zone = "us-west-2b"    
    map_public_ip_on_launch = true
    tags = {
        Name = "public_subnet-02"
    }
}
