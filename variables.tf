variable "public_subnet_ids" {
  description = "List of public subnet IDs to associate with the public route table"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs to associate with the private route table"
  type        = list(string)
}

variable "public_route_table" {
  description = "The ID of the public route table"
  type        = string
  default     = "rtb-0223e16efce4c5ccc"
}

variable "private_route_table" {
  description = "The ID of the private route table"
  type        = string
  default     = "rtb-073577ea5d0c05731"
}
