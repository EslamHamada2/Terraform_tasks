variable "customer" {
    type = string
    default = "customer1"
}
variable "env_name" {
    type = string
    default = "dev"
}
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}
variable "subnets_cidr" {
    type = list
    default = ["10.0.1.0/24","10.0.2.0/24"]
}