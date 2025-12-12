# #Define the VPC
# resource "aws_vpc" "vpc" {
#   cidr_block = var.vpc_cidr
#   region     = "us-east-1"
#   tags = {
#     Name        = var.vpc_name
#     Environment = "demo_environment"
#     Terraform   = "true"
#     Region      = data.aws_region.current.description
#   }
# }
