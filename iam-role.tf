resource "aws_iam_policy" "alb_iam_policy" {
  name        = "${var.cluster_name}-AWSLoadBalancerControllerIAMPolicy"
  path        = "/"
  description = "AWS Load Balancer Controller IAM Policy"
  policy      = locals {
  json_data = jsondecode(file("${path.module}/examples/alb-iam-policy.json"))
    }
}

output "alb_iam_policy_arn" {
  value = aws_iam_policy.alb_iam_policy.arn
}

resource "aws_iam_role" "alb_iam_role" {
  name = "${var.cluster_name}-AWSLoadBalancerControllerIAMRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRoleWithWebIdentity"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Federated = "${var.OIDC_arn}"
        }
        Condition = {
          StringEquals = {
            "${OIDC_url}:aud" : "sts.amazonaws.com",
            "${OIDC_url}:sub" : "system:serviceaccount:kube-system:aws-load-balancer-controller"
          }
        }
      },
    ]
  })

  tags = {
    tag-key = "AWSLoadBalancerControllerIAMPolicy"
  }
}

# Associate Load Balanacer Controller IAM Policy to  IAM Role
resource "aws_iam_role_policy_attachment" "alb_iam_role_policy_attach" {
  policy_arn = aws_iam_policy.alb_iam_policy.arn
  role       = aws_iam_role.alb_iam_role.name
}

output "alb_iam_role_arn" {
  description = "AWS Load Balancer Controller IAM Role ARN"
  value       = aws_iam_role.alb_iam_role.arn
}