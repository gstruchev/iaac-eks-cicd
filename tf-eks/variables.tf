variable "aws_region" {
  description = "The region where the infrastructure should be deployed to"
  type        = string
  default     = "us-east-1"
}

variable "aws_account_id" {
  description = "AWS account ID"
  type        = string
  default     = "116283345599"
}

variable "backend_jenkins_bucket" {
  description = "S3 bucket name where *.tfstate should be saved to"
  type        = string
  default      = "iaac-eks-cicd-80"
}

variable "backend_jenkins_bucket_key" {
  description = "S3 bucket key of *.tfstate"
  type        = string
  default     = "eks/terraform.tfstate"
}

variable "vpc_name" {
  description = "VPC Name for Jenkins Server VPC"
  type        = string
  default     = "eks-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR for Jenkins Server VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "public_subnets" {
  description = "Subnets CIDR range"
  type        = list(string)
  default     = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
}

variable "private_subnets" {
  description = "Subnets CIDR range"
  type        = list(string)
  default     = ["192.168.4.0/24", "192.168.5.0/24", "192.168.6.0/24"]
}

variable "jenkins_security_group" {
  description = "Jenkins security group name"
  type        = string
  default     = "jenkins-sg"
}

variable "jenkins_ec2_instance" {
  description = "Jenkins EC2 instance name"
  type        = string
  default     = "jenkins-server"
}

variable "instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t2.small"
}