module "alb_ingress_controller" {
  source     = "git::https://github.com/mohanttn/helm-aws-albingresscontroller.git"
  helm_services = [
    {
      name            = "aws-load-balancer-controller"
      release_name    = "aws-load-balancer-controller"
    }
  ]
}