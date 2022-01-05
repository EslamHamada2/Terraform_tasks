module "ec2_module"{
    source = "./modules/ec2"
    subnet_id = module.subnet_module.subnet_output
    customer = var.customer
    env_name = var.env_name
}
