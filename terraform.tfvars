aws_region   = "us-east-1"
environment  = "dev"
cluster_name = "mohan-tf-acc-cluster"
OIDC_arn     = "arn:aws:iam::058029412961:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/5549D38D91AE986EC26F4A04BB10CE8E"
OIDC_url     = "oidc.eks.us-east-1.amazonaws.com/id/5549D38D91AE986EC26F4A04BB10CE8E"
alb_image    = "058029412961.dkr.ecr.us-east-1.amazonaws.com/alb-ingress-controller"
image_tag    = "aws-load-balancer-controller-v2.5.1"
vpc_id       = "vpc-0803d89825ac7428d"

