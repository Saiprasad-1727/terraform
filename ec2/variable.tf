variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
  
}
variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  
}
variable "instance_count" {
  description = "The number of instances to create"
  type        = number
}
variable "availability_zone" {
  description = "The AWS region to deploy to"
  type        = string
}
