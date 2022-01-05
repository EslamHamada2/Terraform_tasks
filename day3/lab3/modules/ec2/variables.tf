variable "customer" {
    type = string
}
variable "env_name" {
    type = string
}
variable "subnet_id"{
    type = string
}

variable "create_ec2"{
    type = bool
    default = true 
}