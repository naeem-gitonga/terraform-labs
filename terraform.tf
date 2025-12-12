terraform {
  required_version = ">= 1.13.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.18.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "~> 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 3.0"
    }
  }

  backend "http" {
    address        = "http://localhost:5001/terraform_state/4cdd0c76-d78b-11e9-9bea-db9cd8374f3a"
    lock_address   = "http://localhost:5001/terraform_lock/4cdd0c76-d78b-11e9-9bea-db9cd8374f3a"
    lock_method    = "PUT"
    unlock_address = "http://localhost:5001/terraform_lock/4cdd0c76-d78b-11e9-9bea-db9cd8374f3a"
    unlock_method  = "DELETE"
  }
  # backend "s3" {
  #   bucket = "ng-tf-lab-backend"
  #   region = "us-east-1"
  #   key    = "terraform.tfstate"
  #   dynamodb_table = "terraform-locks"
  #   encrypt = true
  # }

  # backend "remote" {
  #   hostname     = "app.terraform.io"
  #   organization = "my-test-org-naeem-gtng"
  #   workspaces { name = "my-new-shiney-workspace" }
  # }
}