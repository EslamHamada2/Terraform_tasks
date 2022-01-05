module "ec2_module"{
    source = "./modules/ec2"
    public_subnet_id = module.subnet_module.public_subnet_output
    customer = var.customer
    env_name = var.env_name
}