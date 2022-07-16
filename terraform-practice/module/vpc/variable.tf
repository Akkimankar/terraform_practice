variable "cidr_vpc" {
  default = "10.10.0.0/16"
}

variable "cidr_private" {
  default = "10.10.0.0/20"
}

variable "zone_private" {
  default = "us-east-1a" 
}

variable "cidr_public" {
  default = "10.10.16.0/20"
}

variable "zone_public" {
  default = "us-east-1b"
}

variable ""igw-attach"