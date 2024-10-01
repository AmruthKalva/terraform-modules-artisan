module "module-git" {
  source = "git::https://github.com/AmruthKalva/terraform-modules-artisan.git//modules/create_vpc"
  vpc_cidr = "10.0.0.0/16"
    vpc_name = "terraform-vpc"
    subnet_name = "terraform-subnet"
    subnet_cidr = "10.0.1.0/24"
    subnet_zone = "us-east-1a"
    igw_name = "terraform-igw"
    public_crt_name = "terraform-rtb"
}
