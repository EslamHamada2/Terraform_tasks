module "subnet_module"{
    source = "./modules/subnets"
    customer = var.customer
    env_name = var.env_name
    id_vpc = module.vpc_module.vpc_output
    public_subnet1_cidr = var.public_subnet1_cidr
    private_subnet1_cidr = var.private_subnet1_cidr
    private_subnet2_cidr = var.private_subnet2_cidr
}