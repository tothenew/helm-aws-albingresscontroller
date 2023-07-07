## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 1.0, < 3.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 1.10.0, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.6.2 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.10.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.alb_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.alb_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.alb_iam_role_policy_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [helm_release.alb_ingress_controller](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_OIDC_arn"></a> [OIDC\_arn](#input\_OIDC\_arn) | n/a | `string` | n/a | yes |
| <a name="input_OIDC_url"></a> [OIDC\_url](#input\_OIDC\_url) | n/a | `string` | n/a | yes |
| <a name="input_alb_image"></a> [alb\_image](#input\_alb\_image) | image to be used for ALB ingress controller | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region in which resoure will be provisioning | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | cluster name in which ingress controller will be created | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | variable will be prefixed in resource | `string` | n/a | yes |
| <a name="input_helm_chart_repo"></a> [helm\_chart\_repo](#input\_helm\_chart\_repo) | n/a | `string` | `"https://aws.github.io/eks-charts"` | no |
| <a name="input_helm_services"></a> [helm\_services](#input\_helm\_services) | n/a | `map` | <pre>{<br>  "name": "aws-load-balancer-controller",<br>  "release_name": "aws-load-balancer-controller"<br>}</pre> | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | n/a | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id in which cluster will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_iam_policy_arn"></a> [alb\_iam\_policy\_arn](#output\_alb\_iam\_policy\_arn) | n/a |
| <a name="output_alb_iam_role_arn"></a> [alb\_iam\_role\_arn](#output\_alb\_iam\_role\_arn) | AWS Load Balancer Controller IAM Role ARN |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.72 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 1.0, < 3.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 1.10.0, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.6.2 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.10.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.alb_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.alb_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.alb_iam_role_policy_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [helm_release.alb_ingress_controller](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_OIDC_arn"></a> [OIDC\_arn](#input\_OIDC\_arn) | n/a | `string` | n/a | yes |
| <a name="input_OIDC_url"></a> [OIDC\_url](#input\_OIDC\_url) | n/a | `string` | n/a | yes |
| <a name="input_alb_image"></a> [alb\_image](#input\_alb\_image) | image to be used for ALB ingress controller | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | Region in which resoure will be provisioning | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | cluster name in which ingress controller will be created | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | variable will be prefixed in resource | `string` | n/a | yes |
| <a name="input_helm_chart_repo"></a> [helm\_chart\_repo](#input\_helm\_chart\_repo) | n/a | `string` | `"https://aws.github.io/eks-charts"` | no |
| <a name="input_helm_services"></a> [helm\_services](#input\_helm\_services) | n/a | `map` | <pre>{<br>  "name": "aws-load-balancer-controller",<br>  "release_name": "aws-load-balancer-controller"<br>}</pre> | no |
| <a name="input_image_tag"></a> [image\_tag](#input\_image\_tag) | n/a | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id in which cluster will be created | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_iam_policy_arn"></a> [alb\_iam\_policy\_arn](#output\_alb\_iam\_policy\_arn) | n/a |
| <a name="output_alb_iam_role_arn"></a> [alb\_iam\_role\_arn](#output\_alb\_iam\_role\_arn) | AWS Load Balancer Controller IAM Role ARN |
<!-- END_TF_DOCS -->