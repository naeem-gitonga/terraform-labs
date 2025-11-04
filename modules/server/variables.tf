variable "ami" {}
variable "name" {}
variable "size" {}
variable "subnet_id" {}
variable "security_groups" {
  type = list(any)
}
