 module "subnet_addrs" {
  source  = "hashicorp/subnets/cidr"
  version = "1.0.0"
  
  base_cidr_block = "10.0.0.0/22"
  networks = [
  {
    name     = "module_network_a"
    new_bits = 2
  },
  {
    name     = "module_network_b"
    new_bits = 2
  },
 ]
}

output "subnet_addrs" {
  value = module.subnet_addrs.network_cidr_blocks
}

resource "tls_private_key" "generated" {
  algorithm = "RSA"
}

resource "local_file" "private_key_pem" {
  content = tls_private_key.generated.private_key_pem
  filename = "new_this.pem"
}