module "subnet_module"{
    source = "./modules/subnets"
    customer = var.customer
    env_name = var.env_name
    id_vpc = module.vpc_module.vpc_output
    subnets_cidr = var.subnets_cidr
}
