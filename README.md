## About
Just something I'm playing around with.

## Gotchas
**RELEASE** your elastic IPs. They will cost you money if they are sitting idle. Terraform may not release them if you run a `terraform destroy`.

I was able to find this by going to the AWS cost explorer, and scrolling down on the right-hand side, in the filters, to "Usage type" and I selected
"Select all". This showed me exactly what was costing me.

I then went to the VPC service, selected "Elastic IPs", selected the IP and "released it.