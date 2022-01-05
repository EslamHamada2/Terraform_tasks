module "rds_module"{
    source = "./modules/rds"
    private_subnet1_id = module.subnet_module.private_subnet1_output
    private_subnet2_id = module.subnet_module.private_subnet2_output
}