terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "networking" {
  source     = "./modules/networking"
  aws_region = var.aws_region
}

module "security_groups" {
  source = "./modules/security_groups"
  vpc_id = module.networking.vpc_id
}

module "nodejs_instance" {
  source            = "./modules/nodejs_instance"
  ami_id            = var.nodejs_ami
  subnet_id         = module.networking.public_subnet_id
  security_group_id = module.security_groups.nodejs_sg_id
  key_name          = var.key_name
}

module "mongodb_instance" {
  source            = "./modules/mongodb_instance"
  ami_id            = var.mongodb_ami
  subnet_id         = module.networking.public_subnet_id
  security_group_id = module.security_groups.mongodb_sg_id
  key_name          = var.key_name
}