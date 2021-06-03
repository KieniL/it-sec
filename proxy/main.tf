provider "aws" {
  region = "eu-central-1"
}

module "vpc" {
  source = "./modules/vpc"

  region   = var.region
  vpc_cidr = var.vpc_cidr
  project  = var.project
}
