variable "ami_id" {
  type = string
  default = "ami-0022f774911c1d690"
  description = "AMI-ID"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_id" {
    default = "vpc-00a9701be112fe95c" 
}

variable "key_name" {
  default = "aws-nv-cbz"
}
