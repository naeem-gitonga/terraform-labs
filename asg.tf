
# module "autoscaling" {
#   # source  = "terraform-aws-modules/autoscaling/aws"
#   # version = "~> 9.0"
#   source = "github.com/terraform-aws-modules/terraform-aws-autoscaling?ref=v9.0.2"

#   # Autoscaling group
#   name = "myasg"

#   vpc_zone_identifier = [aws_subnet.private_subnets["private_subnet_1"].id,
#     aws_subnet.private_subnets["private_subnet_2"].id,
#   aws_subnet.private_subnets["private_subnet_3"].id]
#   min_size         = 0
#   max_size         = 1
#   desired_capacity = 1

#   # Launch template
#   image_id      = data.aws_ami.ubuntu.id
#   instance_type = "t3.micro"
#   instance_name = "asg-instance"

#   tags = {
#     Name = "Web EC2 Server 2"
#   }

# }

# output "asg_group_size" {
#   value = module.autoscaling.autoscaling_group_max_size
# }