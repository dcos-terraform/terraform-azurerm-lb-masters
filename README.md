[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-lb/job/master/badge/icon)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-lb/job/master/)

Azure LB Masters
============
This module create a load balancer to access the masters externally.

EXAMPLE
-------

```hcl
module "lb-masters" {
  source  = "dcos-terraform/lb-masters/azurerm"
  version = "~> 0.1"

  cluster_name = "production"

  location = ["North Europe"]
  resource_group_name = "my-resource-group"
}


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster_name | Name of the DC/OS cluster | string | - | yes |
| location | Azure location | string | - | yes |
| resource_group_name | resource group name | string | - | yes |
| tags | Add custom tags to all resources | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| backend_address_pool | Public backend address pool ID |
| lb_address | LB Address |

