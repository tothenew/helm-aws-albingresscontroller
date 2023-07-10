################################################################################
# AWS ALB Controller Helm Chart installation
################################################################################

resource "helm_release" "alb_ingress_controller" {
  // count      = var.enabled ? length(var.helm_services) : 0
  name       = var.helm_services.name
  chart      = var.helm_services.release_name
  repository = var.helm_chart_repo
  namespace  = "kube-system"

  set {
    name  = "image.repository"
    value = var.alb_image
  }

  set {
    name  = "image.tag"
    value = var.image_tag
  }

  set {
    name  = "serviceAccount.create"
    value = "true"
  }

  set {
    name  = "serviceAccount.name"
    value = "aws-load-balancer-controller"
  }

  set {
    name  = "serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
    value = aws_iam_role.alb_iam_role.arn
  }

  set {
    name  = "vpc_id"
    value = var.vpc_id
  }

  set {
    name  = "region"
    value = var.aws_region
  }

  set {
    name  = "clusterName"
    value = var.cluster_name
  }

  values = [
    yamlencode(var.helm_services)
  ]
}
