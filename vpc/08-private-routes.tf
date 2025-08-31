resource "aws_route_table" "private" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.NAT-GW.id
    }
    
    tags = {
        Name = "private_rt"
    }       
}

resource "aws_route_table_association" "private_association-1" {
    subnet_id      = aws_subnet.private_subnet-1.id
    route_table_id = aws_route_table.private.id

}

resource "aws_route_table_association" "private_association-2" {
    subnet_id      = aws_subnet.private_subnet-2.id
    route_table_id = aws_route_table.private.id
  
}