resource "aws_eip" "NAT" {
    vpc = true
    tags = {
        Name = "nat_eip"
    }
  
}

resource "aws_nat_gateway" "NAT-GW" {
    allocation_id = aws_eip.NAT.id
    subnet_id     = aws_subnet.public_subnet-1.id
    tags = {
        Name = "nat_gw"
    }
    depends_on = [aws_internet_gateway.igw ]
    
}