variable "aws_region" {
    type = string
    description = "aws region"
    default = "us-east-1"
}

variable "cidr_block" {
    type = string
    description = "aws vpc cidr block"
    default = "10.0.0.0/16"
}

variable "networking_details" {
  type = list(object({
    cidr_block = string
    enable_dns_hostnames = bool
    cidr_block_public = string
    map_public_ip_on_launch = bool
  }))
  
  default = [
    {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    cidr_block_public = "10.0.0.0/24"
    map_public_ip_on_launch = true
    }
  ]
}

variable "route_details" {
  type = list(object({
    cidr_block_route = string
    ingress_from_port = number
    ingress_to_port = number
    ingress_protocol = string
    egress_from_port = number
    egress_to_port = number
    egress_protocol = string
  }))
  
  default = [
    {
    cidr_block_route = "0.0.0.0/0"
    ingress_from_port = 80
    ingress_to_port = 80
    ingress_protocol = "tcp"
    egress_from_port = 0
    egress_to_port = 0
    egress_protocol = "-1"
    }
  ]
}

variable "instance_type" {
    type = string
    description = "aws instance type"
    default = "t3.micro"
}