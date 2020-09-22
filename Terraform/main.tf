provider "aws" {
  version = "~> 2.0"
  profile = "default"
  region  = "eu-west-1"
}

module "aws_vpc" {
  source = "./VPC"
}

module "aws_security_group" {
  source = "./SecurityGroup"
  vpc_id = module.aws_vpc.vpc_id
}

module "aws_eks_cluster" {
  source                 = "./KubernetesCluster"
  public_subnet_id_1     = module.aws_vpc.public_subnet_id-1
  public_subnet_id_2     = module.aws_vpc.public_subnet_id-2
  public_subnet_id_3     = module.aws_vpc.public_subnet_id-3
  vpc_security_group_ids = module.aws_security_group.SecGrp_ID
}

module "aws_eks_nodes" {
  source       = "./KubernetesNodes"
  public_subnet_id_1     = module.aws_vpc.public_subnet_id-1
  public_subnet_id_2     = module.aws_vpc.public_subnet_id-2
  public_subnet_id_3     = module.aws_vpc.public_subnet_id-3
  cluster_name = module.aws_eks_cluster.cluster-name
}