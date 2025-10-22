
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster-richard"
        eks_subnet_ids = ["subnet-0ac9b15ccee2ec0b3","subnet-0c6744bc089c3dd21","subnet-01439287827abab20","subnet-08e56a39d7f3c1f1a"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0ac9b15ccee2ec0b3","subnet-0c6744bc089c3dd21","subnet-01439287827abab20","subnet-08e56a39d7f3c1f1a"]

        tags = {
             "Name" =  "node1"
         } 
  }
}