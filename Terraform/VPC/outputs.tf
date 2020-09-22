output "vpc_id" {
  value = aws_vpc.FP_VPC.id
}

output "public_subnet_id-1" {
  value = aws_subnet.public_subnet-1.id
}

output "public_subnet_id-2" {
  value = aws_subnet.public_subnet-2.id
}

output "public_subnet_id-3" {
  value = aws_subnet.public_subnet-3.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}