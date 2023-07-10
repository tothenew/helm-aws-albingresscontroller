variable "aws_region" {
  type        = string
  description = "Region in which resoure will be provisioning"
}

variable "environment" {
  type        = string
  description = "variable will be prefixed in resource"
}

variable "cluster_name" {
  type        = string
  description = "cluster name in which ingress controller will be created"
}
variable "OIDC_arn" {
  type = string
  description = "OIDC arn will be used for Trust Relationship Policy"
  default = ""
}
variable "OIDC_url" {
  type = string
  description = "OIDC url will be used for Trust Relationship Policy"
  default = ""
}
variable "alb_image" {
  type        = string
  description = "image to be used for ALB ingress controller"
}
variable "vpc_id" {
  type        = string
  description = "VPC id in which cluster will be created"
}
variable "helm_services" {
  default = {
    name         = "aws-load-balancer-controller"
    release_name = "aws-load-balancer-controller"
  }
}

variable "helm_chart_repo" {
  type    = string
  default = "https://aws.github.io/eks-charts"
}
variable "image_tag" {
  type = string
  description = "image tag to be used for alb ingress controller"
}