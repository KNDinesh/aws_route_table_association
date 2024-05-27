output "public_route_table_associations" {
  description = "List of public route table association IDs"
  value = [
    for assoc in aws_route_table_association.public_subnet_associations :
    assoc.id
  ]
}

output "private_route_table_associations" {
  description = "List of private route table association IDs"
  value = [
    for assoc in aws_route_table_association.private_subnet_associations :
    assoc.id
  ]
}
