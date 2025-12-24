provider "aws" {
  region = "me-central-1"  
}

#Call to the module
module "networking" {
  source = "./modules/networking"   # path to networking module

  # Pass variables
  vpc_cidr_block    = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  env_prefix        = var.env_prefix
}

# Security Module
module "security" {
  source = "./modules/security"
  vpc_id     = module.networking.vpc_id     # Use VPC ID from networking module
  env_prefix = var.env_prefix           
}
