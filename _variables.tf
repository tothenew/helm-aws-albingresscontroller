variable "aws_region" {
    type = string
    default = us-east-1
    description = "Region in which resoure will be provisioning"
}

variable "environment" {
    type = string 
    default = dev
    description = "variable will be prefixed in resource"
}

variable "cluster_name" {
    type = string 
    default = ""
    description = "cluster name in which ingress controller will be created"
}
variable "OIDC_arn" {
    type = string 
    default = ""
}
variable "OIDC_url" {
    type = string 
    default = ""
}
variable "alb_image" {
    type = string 
    defualt = ""
    description = "image to be used for ALB ingress controller"
}
variable "vpc_id" {
    type = string 
    default = ""
    description = "VPC id in which cluster will be created"
}

