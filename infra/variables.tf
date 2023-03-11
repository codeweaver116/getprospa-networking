variable "cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
    type = "string"
    default = ""
  
}

variable "environment" {
    type = map
    default = {

          qa ="qa"
        staging = "staging"
        development= "development"
        production ="production"
    }
  
}

variable "stack" {
    type = map
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
    type = "string"
  
}

variable "organization_name" {
    default = "getprospa"
    type = "string"
  
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
#Ecs variables
variable "service_desired_count" {
  description = "Number of tasks running in parallel"
  default = {
        qa =1
        staging = 1
        development= 2
        production =4
    }
}

variable "container_port" {
  description = "The port where the Docker is exposed"
  default     = 8080
}

variable "container_cpu" {
  description = "The number of cpu units used by the task"
  default     = {
        qa = 256 
        staging = 256
        development = 256
        production = 256
  }
}

variable "container_memory" {
  description = "The amount (in MiB) of memory used by the task"
   default     = {
        qa =512  
        staging = 512 
        development = 512
        production = 512
  }
}

variable "health_check_path" {
  description = "Http path for task health check"
  default     = "/" #change this to your default health check
}
