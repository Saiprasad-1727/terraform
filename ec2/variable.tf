variable "ami_value" {
    type = string
    description = "value for the ami"
}

variable "instance_type_value" {
    type = string
    description = "value for instance_type"
}

/*variable "security_groups" {
    type = list(string)
    description = "List of security group IDs"
  
}*/

variable "cidr" {
    type = string
}
