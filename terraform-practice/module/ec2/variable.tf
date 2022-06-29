variable "ami" {
    default = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
    default = "t2.micro"  
}

variable "key_name" {
    default = "terraform"
}

variable "private_subnet_id" {
    default = "subnet-03d5bbf866926f7ad"
}

variable "sg_id" {
}

variable "public_subnet_id" {
    default = 
}
