# Credentials
variable "region_name" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

# Environment
variable "env" {
  type = string
}

# VPC
variable "vpc_cird" {
  type = string
}

# Subnets
variable "public_subnets_cidr" {
  type = list(string)
}

variable "web_subnets_cidr" {
  type = list(string)
}

variable "app_subnets_cidr" {
  type = list(string)
}
variable "db_subnets_cidr" {
  type = list(string)
}
