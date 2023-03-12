variable "cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
    default = "main"
  
}

variable "environment" {
    type = map(string)    
    default = {

          qa ="qa"
        staging = "staging"
        development= "development"
        production ="production"
    }
  
}

variable "stack" {
    type = map(string)
    default = {

        api ="api"
        monitoring = "monitoring"
        database= "database"
        networking ="networking"
        security ="security"

    }
  
}

variable "region" {
    default = "us-east-1"
  
}

variable "organization_name" {
    default = "getprospa"
  
}

variable "availability_zones" {
  description = "a comma-separated list of availability zones, defaults to all AZ of the region, if set to something other than the defaults, both private_subnets and public_subnets have to be defined as well"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnets" {
  description = "a list of CIDRs for private subnets in your VPC, must be set if the cidr variable is defined, needs to have as many elements as there are availability zones"
  default     = ["10.0.0.0/20", "10.0.32.0/20", "10.0.64.0/20"]
}

variable "public_subnets" {
  description = "a list of CIDRs for public subnets in your VPC, must be set if the cidr variable is defined, needs to have as many elements as there are availability zones"
  default     = ["10.0.16.0/20", "10.0.48.0/20", "10.0.80.0/20"]
}
