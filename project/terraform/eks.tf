locals {
 cluster_name = "my-eks-cluster"
}

module "eks" {
 source       = "git::https://github.com/terraform-aws-modules/terraform-aws-eks.git"
 cluster_name = local.cluster_name  
 cluster_version = "1.21"
 vpc_id = "${aws_vpc.vpc.id}"
 subnets = [ "${aws_subnet.subnet_public.id}", "${aws_subnet.subnet_public1.id}" ]

 node_groups = {
   eks_nodes = {
     desired_capacity = 3
     max_capacity     = 3
     min_capaicty     = 1

     instance_type = "t2.micro"
     key_name = "${aws_key_pair.ec2key.key_name}"
   }
   
 }
 #worker_groups = [
 #  {
 #   instance_type = "t2.micro"
 #   asg_max_size  = 2
 #   asg_min_size  = 1
 #   key_name = "${aws_key_pair.ec2key.key_name}"
 # }
 # ]

 manage_aws_auth = false
}