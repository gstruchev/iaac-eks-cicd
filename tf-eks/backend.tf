# Determining S3 Bucket
terraform {
  backend "s3" {
    bucket = "iaac-eks-cicd-80"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}