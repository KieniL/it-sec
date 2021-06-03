variable "region" {
  type        = string
  description = "The region to deploy to"
}

variable "vpc_cidr" {
  type        = string
  description = "The cidr_block to set in VPC"
}