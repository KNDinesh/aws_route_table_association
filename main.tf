# route table association
resource "aws_route_table_association" "subnet_associations" {
  for_each = var.subnets

  subnet_id       = module.subnets.public_subnet_ids[Zing.Public-Infra-2A].id
  route_table_id  = module.route_table.route_table_id

  depends_on = [
    module.subnets,
  ]
}
