module "alb" {
  source = "https://github.com/mohanttn/helm-aws-albingresscontroller.git"
  depends_on = [aws_iam_role.alb_iam_role]

  helm_services = [
    {
      name          = "aws-load-balancer-controller"
      chart_version = "1.5.4"
      release_name  = "eks/aws-load-balancer-controller"
      }
  ]
}