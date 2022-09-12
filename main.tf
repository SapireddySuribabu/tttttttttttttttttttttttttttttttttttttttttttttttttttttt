resource "aws_eks_cluster" "eks_cluster" {
    name = "suribabu"
    role_arn = "arn:aws:iam::069492936290:role/AWSdevopscerttaskrole"
    vpc_config{
        subnet_ids = var.subnet_ids
    }

 
}


resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "suri_eks_nodegroup"
  node_role_arn   = "arn:aws:iam::069492936290:role/AWSdevopscerttaskrole"
  subnet_ids      = var.subnet_ids

    
  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}