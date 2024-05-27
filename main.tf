# route table association
resource "aws_route_table_association" "public_subnet_associations" {
  for_each = toset(var.public_subnet_ids)

  subnet_id      = each.value
  route_table_id = var.public_route_table.id
}

resource "aws_route_table_association" "private_subnet_associations" {
  for_each = toset(var.private_subnet_ids)

  subnet_id      = each.value
  route_table_id = var.private_route_table.id
}
