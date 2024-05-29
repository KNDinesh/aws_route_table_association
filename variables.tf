# variables for the module
variable "subnets" {
  description = "Map of subnet configurations"
  type = map(object({
    cidr_block = string
    az        = string
    public    = bool
    environment = string
  }))
}

variable "route_table_id" {
  type = string
}
