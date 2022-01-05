module "security_group_module"{
    source = "./modules/security_group"
    id_vpc = module.vpc_module.vpc_output
    customer = var.customer
    env_name = var.env_name
}