module "vpc_module"{
    source = "./modules/vpc"
    customer = var.customer
    env_name = var.env_name
    vpc_cidr = var.vpc_cidr
}