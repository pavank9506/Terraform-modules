variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "vpc_cidr" {
    #default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    default = true
}

# Optional
variable "common_tags" {
    default = {}
}

variable "vpc_tags" {
    default = {}
}

variable "igw_tags" {
    default = {}
}

variable "private_subnet_cidrs" {
    type = list
}

variable "public_subnet_cidrs" {
    type = list
}

variable "public_subnet_cidrs" {
    type = list
}

variable "database_subnet_tags" {
    default = {}
}

variable "db_subnet_group_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "sg" {
}

variable "ingress_rules" {
    default = [
        {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "opening 22"
        },
        {
            from_port = 80
            to_port = 80
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "opening 80"
        },
        {
            from_port = 8080
            to_port = 8080
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            description = "opening 8080"
        }
    ]
}
