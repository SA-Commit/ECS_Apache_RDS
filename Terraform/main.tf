provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./network"
}

module "rds" {
  source = "./rds"
}

module "ecs" {
  source = "./ecs"
}

module "secrets" {
  source = "./secrets"
}

module "iam" {
  source = "./iam"
}

module "monitoring" {
  source = "./monitoring"
}
