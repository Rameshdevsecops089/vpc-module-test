module "vpc" {
    source = "git::https://github.com/Rameshdevsecops089/vpc-module-test.git" # this is user githug 
    project = var.project
    environment = var.environment
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = true
}