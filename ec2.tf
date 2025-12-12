# # resource "aws_instance" "ubuntu_server" {
# #   ami                         = data.aws_ami.ubuntu.id
# #   instance_type               = "t3.micro"
# #   subnet_id                   = aws_subnet.public_subnets["public_subnet_1"].id
# #   security_groups             = [aws_security_group.vpc-ping.id, aws_security_group.ingress-ssh.id, aws_security_group.vpc-web.id]
# #   associate_public_ip_address = true
# #   key_name                    = aws_key_pair.generated.key_name
# #   connection {
# #     user        = "ubuntu"
# #     private_key = tls_private_key.generated.private_key_pem
# #     host        = self.public_ip
# #   }

# #   tags = {
# #     Name = "Ubuntu EC2 Server"
# #   }

# #   lifecycle {
# #     ignore_changes = [security_groups]
# #   }
# #   provisioner "local-exec" {
# #     command = "chmod 600 ${local_file.private_key_pem.filename}"
# #   }

# #   provisioner "remote-exec" {
# #     inline = [
# #       "sudo apt update && sudo apt install git -y",
# #       "sudo rm -rf /tmp",
# #       "sudo git clone https://github.com/hashicorp/demo-terraform-101 /tmp",
# #       "sudo sh /tmp/assets/setup-web.sh",
# #     ]
# #   }
# # }

# # resource "aws_instance" "web_server" {
# #   ami           = data.aws_ami.ubuntu.id
# #   instance_type = "t3.micro"
# #   subnet_id     = aws_subnet.public_subnets["public_subnet_1"].id
# #   tags = {
# #     Name  = local.server_name
# #     Owner = local.team
# #     App   = local.application
# #   }
# # }

# # resource "aws_instance"  "server_2" {
# #   ami = "ami-0ba5fd8ce786c1351"
# #   instance_type = "t4g.micro"

# # }

# module "server_YOU_SEE_THIS_SERVER" {
#   name      = "server_1"
#   source    = "./modules/server"
#   size      = "t3.micro"
#   ami       = data.aws_ami.ubuntu.id
#   subnet_id = aws_subnet.public_subnets["public_subnet_3"].id
#   security_groups = [
#     aws_security_group.vpc-ping.id,
#     aws_security_group.ingress-ssh.id,
#     aws_security_group.vpc-web.id
#   ]
# }

# module "server_YOU_SEE_THIS_NEW_SERVER" {
#   user        = "ubuntu"
#   private_key = tls_private_key.generated.private_key_pem
#   key_name    = aws_key_pair.generated.key_name
#   source      = "./modules/web_server"
#   ami         = data.aws_ami.ubuntu.id
#   subnet_id   = aws_subnet.public_subnets["public_subnet_1"].id
#   security_groups = [
#     aws_security_group.vpc-ping.id,
#     aws_security_group.ingress-ssh.id,
#     aws_security_group.vpc-web.id
#   ]
# }

# output "public_ip_address" {
#   value       = module.server_YOU_SEE_THIS_NEW_SERVER.public_ip
#   description = "Public IP address"
# }
