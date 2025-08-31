resource "aws_subnet" "private_subnet-1" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = "10.0.3.0/24"
    availability_zone = "us-west-2a"
  
    tags = {
        Name = "private_subnet-01"
    }   

}

resource "aws_subnet" "private_subnet-2" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = "10.0.4.0/24"
    availability_zone = "us-west-2b"            

    tags = {
        Name = "private_subnet-02"
    }   

}
