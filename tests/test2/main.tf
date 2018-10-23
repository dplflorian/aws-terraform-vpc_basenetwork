provider "aws" {
  version = "~> 1.2"
  region  = "us-west-2"
}

module "vpc" {
  source = "../../module"

  vpc_name   = "Test2VPC"
  custom_azs = ["us-west-2a", "us-west-2b"]

  cidr_range             = "10.0.0.0/16"
  public_cidr_ranges     = ["10.0.1.0/24", "10.0.3.0/24", "10.0.5.0/24", "10.0.7.0/24"]
  public_subnets_per_az  = 2
  private_cidr_ranges    = ["10.0.2.0/24", "10.0.4.0/24", "10.0.6.0/24", "10.0.8.0/24"]
  private_subnets_per_az = 2
}
