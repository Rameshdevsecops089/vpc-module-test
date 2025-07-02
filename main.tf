module "vpc" {
<<<<<<< HEAD
    #source  = "./terraform-aws-vpc" # this is local 
    source = "git::https://github.com/Rameshdevsecops089/vpc-module-test.git" # this is user githug 
=======
    source  = "./terraform-aws-vpc" # this is local 
    #source = "git::https://github.com/Rameshdevsecops089/terraform-aws-vpc.git?ref=main" # this is user githug 
>>>>>>> 906def8fa92507a60d41950e2bd65677bdf8e288
   /*  project = "roboshop"
    environment = "dev"
    public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"] */
    project = var.project
    environment = var.environment
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = true
}
