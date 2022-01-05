module "routes_module"{
    source = "./modules/routes"
    customer = var.customer
    env_name = var.env_name
    id_vpc = module.vpc_module.vpc_output
    public_subnet_id = module.subnet_module.public_subnet_output
    private_subnet1_id = module.subnet_module.private_subnet1_output
    private_subnet2_id = module.subnet_module.private_subnet2_output
}