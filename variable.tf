variable "ami_id" {
  type = string
  default = "ami-0cff7528ff583bf9a"
  description = "AMI-ID"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_id" {
    default = "vpc-0fc4b88bd30f7e9d4" 
}

variable "key_name" {
  default = "terraform"
}
