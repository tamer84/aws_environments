<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.39.0 |
| <a name="requirement_external"></a> [external](#requirement\_external) | ~> 2.2.2 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 16.2.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.10.1 |
| <a name="requirement_http"></a> [http](#requirement\_http) | 3.4.2 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.7.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.21.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.5.1 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.39.1 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.10.1 |
| <a name="provider_http"></a> [http](#provider\_http) | 3.4.2 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_app-vault"></a> [app-vault](#module\_app-vault) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/vault | 1.4.0 |
| <a name="module_aws_csi_ebs_driver_role"></a> [aws\_csi\_ebs\_driver\_role](#module\_aws\_csi\_ebs\_driver\_role) | terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks | ~> 5.20 |
| <a name="module_aws_loadbalancer_role"></a> [aws\_loadbalancer\_role](#module\_aws\_loadbalancer\_role) | terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks | ~> 5.20 |
| <a name="module_central_certificate"></a> [central\_certificate](#module\_central\_certificate) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/certificate | 1.4.0 |
| <a name="module_cluster_autoscaler_role"></a> [cluster\_autoscaler\_role](#module\_cluster\_autoscaler\_role) | terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks | ~> 5.20 |
| <a name="module_dns"></a> [dns](#module\_dns) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/dns | 1.4.0 |
| <a name="module_eks"></a> [eks](#module\_eks) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/eks | 1.4.0 |
| <a name="module_externaldns_role"></a> [externaldns\_role](#module\_externaldns\_role) | terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks | ~> 5.20 |
| <a name="module_jumpserver"></a> [jumpserver](#module\_jumpserver) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/jumpserver | 1.4.0 |
| <a name="module_network"></a> [network](#module\_network) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/network | 1.4.0 |
| <a name="module_oracle_ee"></a> [oracle\_ee](#module\_oracle\_ee) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/oracle | 1.4.0 |
| <a name="module_oracle_se"></a> [oracle\_se](#module\_oracle\_se) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/oracle | 1.4.0 |
| <a name="module_postgres"></a> [postgres](#module\_postgres) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/postgres | 1.4.0 |
| <a name="module_rabbitmq"></a> [rabbitmq](#module\_rabbitmq) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/rabbitmq | 1.4.0 |
| <a name="module_redis"></a> [redis](#module\_redis) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/redis | 1.4.0 |
| <a name="module_regional_certificate"></a> [regional\_certificate](#module\_regional\_certificate) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/certificate | 1.4.0 |
| <a name="module_ses"></a> [ses](#module\_ses) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/ses | 1.4.0 |
| <a name="module_ses-smtp"></a> [ses-smtp](#module\_ses-smtp) | git::https://terraform@gitlab.crealogix.net/platform/iac/iac_modules.git//infra/ses-smtp | 1.4.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.aws_csi_ebs_driver_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.aws_loadbalancer_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.cluster_autoscaler_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.external_dns_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_secretsmanager_secret.argocd_admin_password](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret.argocd_secret_server_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.argocd_admin_password_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_secretsmanager_secret_version.argocd_secret_server_key_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [helm_release.argocd](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |
| [helm_release.argocd_apps](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |
| [helm_release.aws_csi_ebs_driver](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |
| [helm_release.aws_loadbalancer_controller](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |
| [helm_release.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |
| [helm_release.externaldns](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |
| [helm_release.metrics_server](https://registry.terraform.io/providers/hashicorp/helm/2.10.1/docs/resources/release) | resource |
| [kubectl_manifest.prometheus_crds](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [random_password.argocd_admin_password](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |
| [random_password.argocd_secret_server_key](https://registry.terraform.io/providers/hashicorp/random/3.5.1/docs/resources/password) | resource |
| [aws_iam_policy_document.aws_load_balancer_controller](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.cluster_autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.external_dns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_secretsmanager_secret_version.cert](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret_version) | data source |
| [aws_secretsmanager_secret_version.chain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret_version) | data source |
| [aws_secretsmanager_secret_version.privkey](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret_version) | data source |
| [aws_vpc_ipam_pool.primary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc_ipam_pool) | data source |
| [http_http.prometheus_crds](https://registry.terraform.io/providers/hashicorp/http/3.4.2/docs/data-sources/http) | data source |
| [terraform_remote_state.gitlab_mirror](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_accountId"></a> [accountId](#input\_accountId) | Account Id of workload | `string` | n/a | yes |
| <a name="input_app_nodes_desired"></a> [app\_nodes\_desired](#input\_app\_nodes\_desired) | Desired number of instances in app node group | `number` | n/a | yes |
| <a name="input_app_nodes_max"></a> [app\_nodes\_max](#input\_app\_nodes\_max) | Max number of instances in app node group | `number` | n/a | yes |
| <a name="input_app_nodes_min"></a> [app\_nodes\_min](#input\_app\_nodes\_min) | Min number of instances in app node group | `number` | n/a | yes |
| <a name="input_app_worker_node_type"></a> [app\_worker\_node\_type](#input\_app\_worker\_node\_type) | Instance type to provision for the app node group | `string` | n/a | yes |
| <a name="input_argocd_admin_password"></a> [argocd\_admin\_password](#input\_argocd\_admin\_password) | The ArgoCD admin password. If not set a password is generated. Do not set on production environments. | `string` | n/a | yes |
| <a name="input_argocd_apps"></a> [argocd\_apps](#input\_argocd\_apps) | List of ArgoCD applications | <pre>list(object({<br>    app_namespace              = string<br>    app_project_name           = optional(string)<br>    app_additional_namespaces  = optional(list(string))<br>    codecommit_repository_name = string<br>    app_manifest_path          = string<br>    app_repo_target_revision   = optional(string, "master")<br>    additional_labels = optional(list(object({<br>      name  = string<br>      value = string<br>    })))<br>    cluster_resource_whitelist = optional(list(object({<br>      group = string<br>      kind  = string<br>    })))<br>  }))</pre> | `[]` | no |
| <a name="input_argocd_apps_helm_chart_name"></a> [argocd\_apps\_helm\_chart\_name](#input\_argocd\_apps\_helm\_chart\_name) | Helm chart name for argocd-apps. | `string` | `"argocd-apps"` | no |
| <a name="input_argocd_apps_helm_chart_repository"></a> [argocd\_apps\_helm\_chart\_repository](#input\_argocd\_apps\_helm\_chart\_repository) | Helm chart repo for argocd-apps. | `string` | `"https://argoproj.github.io/argo-helm/"` | no |
| <a name="input_argocd_apps_helm_chart_version"></a> [argocd\_apps\_helm\_chart\_version](#input\_argocd\_apps\_helm\_chart\_version) | Helm chart version for argocd-apps. | `string` | `"1.6.1"` | no |
| <a name="input_argocd_enable_exec_into_pods"></a> [argocd\_enable\_exec\_into\_pods](#input\_argocd\_enable\_exec\_into\_pods) | Enables developers to exec into pods from Argocd UI. | `bool` | `false` | no |
| <a name="input_argocd_helm_chart_name"></a> [argocd\_helm\_chart\_name](#input\_argocd\_helm\_chart\_name) | Name of the Argocd helm chart. | `string` | `"argo-cd"` | no |
| <a name="input_argocd_helm_chart_repository"></a> [argocd\_helm\_chart\_repository](#input\_argocd\_helm\_chart\_repository) | Argocd helm chart repository. | `string` | `"https://argoproj.github.io/argo-helm/"` | no |
| <a name="input_argocd_helm_chart_version"></a> [argocd\_helm\_chart\_version](#input\_argocd\_helm\_chart\_version) | Helm chart version for Argocd. | `string` | `"6.7.17"` | no |
| <a name="input_argocd_release_name"></a> [argocd\_release\_name](#input\_argocd\_release\_name) | Argocd helm release name. | `string` | `"argocd"` | no |
| <a name="input_argocd_release_namespace"></a> [argocd\_release\_namespace](#input\_argocd\_release\_namespace) | Namespace where Argocd will be installed. | `string` | `"argocd"` | no |
| <a name="input_argocd_secret_server_key"></a> [argocd\_secret\_server\_key](#input\_argocd\_secret\_server\_key) | The ArgoCD server key used e.g. to encrypt access tokens. If not set a key is generated. Do not set on production environments. | `string` | n/a | yes |
| <a name="input_artifactory_password"></a> [artifactory\_password](#input\_artifactory\_password) | Artfactory password | `string` | n/a | yes |
| <a name="input_cluster_application_node_group_max_size"></a> [cluster\_application\_node\_group\_max\_size](#input\_cluster\_application\_node\_group\_max\_size) | Maximal number of cluster nodes in this group. | `number` | `3` | no |
| <a name="input_cluster_application_node_group_min_size"></a> [cluster\_application\_node\_group\_min\_size](#input\_cluster\_application\_node\_group\_min\_size) | Minimal number of cluster nodes in this group. | `number` | `2` | no |
| <a name="input_cluster_infra_node_group_max_size"></a> [cluster\_infra\_node\_group\_max\_size](#input\_cluster\_infra\_node\_group\_max\_size) | Maximal number of cluster nodes in this group. | `number` | `2` | no |
| <a name="input_cluster_infra_node_group_min_size"></a> [cluster\_infra\_node\_group\_min\_size](#input\_cluster\_infra\_node\_group\_min\_size) | Minimal number of cluster nodes in this group. | `number` | `2` | no |
| <a name="input_create_argocd"></a> [create\_argocd](#input\_create\_argocd) | Set to false to disable the argocd deployment | `bool` | `true` | no |
| <a name="input_create_jumpserver"></a> [create\_jumpserver](#input\_create\_jumpserver) | Option to provision a Jumpserver for accessing internal services via AWS SSM | `bool` | `false` | no |
| <a name="input_create_oracle_ee_db"></a> [create\_oracle\_ee\_db](#input\_create\_oracle\_ee\_db) | Option to provision a Oracle EE Database using RDS | `bool` | `false` | no |
| <a name="input_create_oracle_se_db"></a> [create\_oracle\_se\_db](#input\_create\_oracle\_se\_db) | Option to provision a Oracle SE Database using RDS | `bool` | `false` | no |
| <a name="input_create_postgres_db"></a> [create\_postgres\_db](#input\_create\_postgres\_db) | Option to provision a Postgres Database using RDS Aurora V2 | `bool` | `false` | no |
| <a name="input_create_private_zone"></a> [create\_private\_zone](#input\_create\_private\_zone) | Option to create a VPC internal private DNS zone. Necessary if any of the Managed Services (Redis, RabbitMQ etc..) will be provisioned | `bool` | `true` | no |
| <a name="input_create_rabbitmq_cluster"></a> [create\_rabbitmq\_cluster](#input\_create\_rabbitmq\_cluster) | Option to provision a RabbitMQ Cluster using Managed MQ | `bool` | `false` | no |
| <a name="input_create_redis_cluster"></a> [create\_redis\_cluster](#input\_create\_redis\_cluster) | Option to provision a managed Redis Cluster using Elasticache | `bool` | `false` | no |
| <a name="input_create_ses"></a> [create\_ses](#input\_create\_ses) | Creates SES domain\_identity | `bool` | `true` | no |
| <a name="input_create_ses_smtp"></a> [create\_ses\_smtp](#input\_create\_ses\_smtp) | Creates an SES SMTP user | `bool` | `true` | no |
| <a name="input_database_master_password"></a> [database\_master\_password](#input\_database\_master\_password) | Master password for database engine | `string` | `""` | no |
| <a name="input_database_master_username"></a> [database\_master\_username](#input\_database\_master\_username) | Master username for database engine | `string` | `""` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | Database name | `string` | `""` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | DNS domain for the solution. The Terraform workspace will be prefixed to this in Route53. | `string` | n/a | yes |
| <a name="input_gloo_oidc"></a> [gloo\_oidc](#input\_gloo\_oidc) | OIDC password for Gloo | `string` | n/a | yes |
| <a name="input_import_central_cert"></a> [import\_central\_cert](#input\_import\_central\_cert) | Option to import a central (us-east-1) certificate. Necessary for Cloudfront distributions | `bool` | `false` | no |
| <a name="input_import_regional_cert"></a> [import\_regional\_cert](#input\_import\_regional\_cert) | Option to import a regional certificate. Necessary for LBs | `bool` | `false` | no |
| <a name="input_infra_nodes_desired"></a> [infra\_nodes\_desired](#input\_infra\_nodes\_desired) | Desired number of instances in infra node group | `number` | n/a | yes |
| <a name="input_infra_nodes_max"></a> [infra\_nodes\_max](#input\_infra\_nodes\_max) | Max number of instances in infra node group | `number` | n/a | yes |
| <a name="input_infra_nodes_min"></a> [infra\_nodes\_min](#input\_infra\_nodes\_min) | Min number of instances in infra node group | `number` | n/a | yes |
| <a name="input_infra_worker_node_type"></a> [infra\_worker\_node\_type](#input\_infra\_worker\_node\_type) | Instance type to provision for the infra node group | `string` | n/a | yes |
| <a name="input_ipam_pool_id"></a> [ipam\_pool\_id](#input\_ipam\_pool\_id) | IPAM Pool ID from central networking accoun. | `string` | `"ipam-pool-03b5fa20be6cc49a4"` | no |
| <a name="input_kube_prometheus_stack_helm_chart_version"></a> [kube\_prometheus\_stack\_helm\_chart\_version](#input\_kube\_prometheus\_stack\_helm\_chart\_version) | Kube Prometheus Stack Helm chart version used to download CRDs. | `string` | `"56.5.0"` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Kubernetes version to provision | `string` | n/a | yes |
| <a name="input_map_public_ips"></a> [map\_public\_ips](#input\_map\_public\_ips) | Option to enable automatic assignment of public IPs to instances in public subnets. Security risk. | `bool` | `false` | no |
| <a name="input_oracle_instance_type"></a> [oracle\_instance\_type](#input\_oracle\_instance\_type) | Instance type to provision for the rds instance | `string` | `"db.m5.large"` | no |
| <a name="input_postgres_max_capacity"></a> [postgres\_max\_capacity](#input\_postgres\_max\_capacity) | Max ACU cluster can scale up to | `number` | `5` | no |
| <a name="input_postgres_min_capacity"></a> [postgres\_min\_capacity](#input\_postgres\_min\_capacity) | Min ACU cluster can scale down to | `number` | `0.5` | no |
| <a name="input_rabbitmq_admin_password"></a> [rabbitmq\_admin\_password](#input\_rabbitmq\_admin\_password) | Rabbit MQ Cluster admin password | `string` | `"rabbitmq.admin"` | no |
| <a name="input_rabbitmq_admin_username"></a> [rabbitmq\_admin\_username](#input\_rabbitmq\_admin\_username) | Rabbit MQ Cluster admin username | `string` | `"admin"` | no |
| <a name="input_rabbitmq_deployment_mode"></a> [rabbitmq\_deployment\_mode](#input\_rabbitmq\_deployment\_mode) | CLUSTER\_MULTI\_AZ or SINGLE\_INSTANCE | `string` | `"SINGLE_INSTANCE"` | no |
| <a name="input_rabbitmq_engine_version"></a> [rabbitmq\_engine\_version](#input\_rabbitmq\_engine\_version) | RabbitMQ engine version | `string` | `"3.10.20"` | no |
| <a name="input_rabbitmq_host_instance_type"></a> [rabbitmq\_host\_instance\_type](#input\_rabbitmq\_host\_instance\_type) | Instance type to provision | `string` | `"mq.t3.micro"` | no |
| <a name="input_redis_node_type"></a> [redis\_node\_type](#input\_redis\_node\_type) | Specify the node type for the redis instance | `string` | `"cache.m5.large"` | no |
| <a name="input_redis_num_cache_nodes"></a> [redis\_num\_cache\_nodes](#input\_redis\_num\_cache\_nodes) | How many nodes of redis\_node\_type should be in the cluster | `number` | `1` | no |
| <a name="input_redis_version"></a> [redis\_version](#input\_redis\_version) | Version of Redis to provision | `string` | `"6.2"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region where the certificate should be imported into | `string` | n/a | yes |
| <a name="input_scheduler_autoscaler_scaledown_recurrence"></a> [scheduler\_autoscaler\_scaledown\_recurrence](#input\_scheduler\_autoscaler\_scaledown\_recurrence) | When to set the autoscaler to scale down all nodes (Cron syntax). | `string` | `"00 20 * * *"` | no |
| <a name="input_scheduler_autoscaler_scaleup_recurrence"></a> [scheduler\_autoscaler\_scaleup\_recurrence](#input\_scheduler\_autoscaler\_scaleup\_recurrence) | When to set the autoscaler to the normal values defined in the Terraform variables (Cron syntax). | `string` | `"00 07 * * *"` | no |
| <a name="input_scheduler_autoscaler_timezone"></a> [scheduler\_autoscaler\_timezone](#input\_scheduler\_autoscaler\_timezone) | Reference timezone for the Cron variables. | `string` | `"CET"` | no |
| <a name="input_scheduler_enabled"></a> [scheduler\_enabled](#input\_scheduler\_enabled) | Enable node autoscaling scheduler. | `bool` | `false` | no |
| <a name="input_ses_create_records"></a> [ses\_create\_records](#input\_ses\_create\_records) | Set to false to disable Route 53 record creation | `bool` | `true` | no |
| <a name="input_solution"></a> [solution](#input\_solution) | Name of the solution the infrastructure is being provisioned for | `string` | n/a | yes |
| <a name="input_vault_enabled"></a> [vault\_enabled](#input\_vault\_enabled) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_nodes_asg_group_name"></a> [app\_nodes\_asg\_group\_name](#output\_app\_nodes\_asg\_group\_name) | n/a |
| <a name="output_central_certificate"></a> [central\_certificate](#output\_central\_certificate) | Central Certificate |
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | CA certificate |
| <a name="output_dns_zones_arns"></a> [dns\_zones\_arns](#output\_dns\_zones\_arns) | n/a |
| <a name="output_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#output\_eks\_cluster\_endpoint) | EKS cluster endpoint |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | EKS cluster name |
| <a name="output_hosted_zone"></a> [hosted\_zone](#output\_hosted\_zone) | Hosted zone for the workspace |
| <a name="output_infra_eks_node_arn"></a> [infra\_eks\_node\_arn](#output\_infra\_eks\_node\_arn) | n/a |
| <a name="output_infra_nodes_asg_group_name"></a> [infra\_nodes\_asg\_group\_name](#output\_infra\_nodes\_asg\_group\_name) | n/a |
| <a name="output_internal_securitygroup_id"></a> [internal\_securitygroup\_id](#output\_internal\_securitygroup\_id) | n/a |
| <a name="output_oidc_arn"></a> [oidc\_arn](#output\_oidc\_arn) | n/a |
| <a name="output_private_hosted_zone_arn"></a> [private\_hosted\_zone\_arn](#output\_private\_hosted\_zone\_arn) | n/a |
| <a name="output_private_hosted_zone_id"></a> [private\_hosted\_zone\_id](#output\_private\_hosted\_zone\_id) | n/a |
| <a name="output_private_hosted_zone_name"></a> [private\_hosted\_zone\_name](#output\_private\_hosted\_zone\_name) | zone dns name like local-playground.aar.crealogix-saas.com |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | Array of private subnets |
| <a name="output_public_hosted_zone_arn"></a> [public\_hosted\_zone\_arn](#output\_public\_hosted\_zone\_arn) | n/a |
| <a name="output_public_hosted_zone_name"></a> [public\_hosted\_zone\_name](#output\_public\_hosted\_zone\_name) | n/a |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | Array of public subnets |
| <a name="output_regional_certificate"></a> [regional\_certificate](#output\_regional\_certificate) | Regional Certificate |
| <a name="output_route53_ns_entries"></a> [route53\_ns\_entries](#output\_route53\_ns\_entries) | NS Entries for hosted zone - to be configured in Networking account |
| <a name="output_smtp_password"></a> [smtp\_password](#output\_smtp\_password) | TODO: remove the below outputs again as they are sensitive -> must be a kubernetes secret in the end |
| <a name="output_smtp_username"></a> [smtp\_username](#output\_smtp\_username) | SES SMTP |
| <a name="output_vpc"></a> [vpc](#output\_vpc) | Complete VPC output |
<!-- END_TF_DOCS -->