variable "customer" {
    type = string
}

variable "env_name" {
    type = string
}

variable "vpc_cidr" {
    type = string
}

variable "subnets_cidr" {
    type = list(string)
}