variable "vpc_cidr_block" {
    default = "10.0.0.0/16" 
  
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