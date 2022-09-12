variable "subnet_ids" {
  description = "Name of the subnet ids"
  default = ["subnet-01aa4433f8a4a2d1b", "subnet-068f81930682c77e6"]
}

variable "subnet_azs" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "ec2_ssh_key" {
  default = "eks-cluster"
}


variable "role_arn" {
  default = "arn:aws:iam::069492936290:role/AWSServiceRoleForAmazonEKSNodegroup"
}
variable "name" {
  default = "AWSServiceRoleForAmazonEKSNodegroup"
}

variable "cidr_block" {
  default = "172.31.0.0/16"
}

variable "vpc_id" {
  default = "  vpc-02c793282ecfe6e52"
}

variable "instance_types" {
  default = ["t2.micro"]
}

variable "bucket" {
  description = "bucket name"
  type        = string
  default = "suri-bucket341"
}
variable "acl" {
  type = string
  default = "public-read-write"
}
variable "aws_lb_name" {
  type = string
  default = "test-lb-tf1"

}
variable "lb_type" {
  type = string
  default = "application"

}

variable "vpn_cidr_block" {
  default = "10.0.0.0/16"

}

variable "public_subnet" {
  default = "subnet-0175eb38117876d57"
}

variable "private_subnet" {
  default = "subnet-00a771c328055bff2"
}