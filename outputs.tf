output "vpc_id" {
  description = "ID of the VPC"
  value       = try(aws_vpc.this_vpc.id, "")
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = try(aws_vpc.this_vpc.cidr_block, "")
}

output "public_subnet_id" {
  description = "Public Subnet ID's"
  #count = length(var.public_subnets_cidr)
  value = aws_subnet.public[*].id
}

output "private_subnet_id" {
  description = "Private Subnet ID's"
  #count = length(var.private_subnets_cidr)
  value = aws_subnet.private[*].id
}

output "igw_id" {
  description = "Internet Gateway ID's"
  value       = aws_internet_gateway.igw.id
}

# output "public_subnets" {
#   description = "List of All Public Subnets"
#   value = [
#     for k, v in var.public_subnets : aws_subnet.private[k].id
#   ]
# }

# output "private_subnets" {
#   description = "List of All Private Subnets"
#   value = [
#     for k, v in var.private_subnets : aws_subnet.private[k].id
#   ]
# }


