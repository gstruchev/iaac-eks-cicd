variable "aws_region" {
    description = "The region where the infrastructure should be deployed to"
    type = string
}

variable "backend_jenkins_bucket" {
    description = "S3 bucket name where *.tfstate should be saved to"
    type = string
}

variable "backend_jenkins_bucket_key" {
    description = "S3 bucket key of *.tfstate"
    type = string
}

variable "vpc_name" {
  description = "VPC Name for Jenkins Server VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR for Jenkins Server VPC"
  type        = string
}

variable "public_subnets" {
  description = "Subnets CIDR range"
  type        = list(string)
}

variable "jenkins_security_group" {
  description = "Jenkins security group name"
  type        = string
}

variable "jenkins_ec2_instance" {
  description = "Jenkins EC2 instance name"
  type        = string
}

variable "instance_type" {
  description = "Instance Type"
  type        = string
}