output "public_subnet_output"{
    value = aws_subnet.public_subnet1.id
}

output "private_subnet1_output"{
    value = aws_subnet.private_subnet1.id
}

output "private_subnet2_output"{
    value = aws_subnet.private_subnet2.id
}