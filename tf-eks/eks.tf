# Creating EKS
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0.5"

  name    = "my-eks-cluster"
  kubernetes_version = "1.33"
  endpoint_public_access  = true

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets


  eks_managed_node_groups = {
    nodes = {
      min_size     = 1
      max_size     = 2
      desired_size = 2

      instance_types = ["t2.small"]
      capacity_type  = "SPOT"
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}