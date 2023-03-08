## Create AWS VPC using Terraform

## Usage
```
module "vpc" {

  source = "github.com/shamimice03/terraform-aws-vpc"

  vpc_name = "prod_vpc"
  cidr     = "192.168.0.0/16"

  azs                       = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
  public_subnet_cidr        = ["192.168.0.0/20", "192.168.16.0/20", "192.168.32.0/20"]
  private_subnet_cidr       = ["192.168.48.0/20", "192.168.64.0/20", "192.168.80.0/20"]
  db_subnet_cidr            = ["192.168.96.0/20", "192.168.112.0/20", "192.168.128.0/20"]
  
  enable_dns_hostnames      = true
  enable_dns_support        = true
  enable_single_nat_gateway = false

  tags = {
    "Team" = "Platform-team"
    "Env"  = "prod"
  }

}
```

## Outputs
| Name | Description | Type |
|------|---------|-----------|
db_subnet_id | DB Subnet ID's | 
igw_id | Internet Gateway ID's | 
private_subnet_id | Private Subnet ID's |
public_subnet_id | Public Subnet ID's |
vpc_cidr_block | The CIDR block of the VPC |
vpc_id | ID of the VPC |
