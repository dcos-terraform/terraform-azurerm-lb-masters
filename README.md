[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/buildStatus/icon?job=dcos-terraform%2Fterraform-azurerm-lb-masters%2Fsupport%252F0.1.x)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/SKELETON/job/support%252F0.1.x/)

Azure LB Masters
============
This module create a load balancer to access the masters externally.

EXAMPLE
-------

```hcl
module "lb-masters" {
  source  = "dcos-terraform/lb-masters/azurerm"
  version = "~> 0.1.0"

  cluster_name = "production"

  location = ["North Europe"]
  resource_group_name = "my-resource-group"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_name | Name of the DC/OS cluster | string | n/a | yes |
| location | Azure Region | string | n/a | yes |
| resource\_group\_name | Name of the azure resource group | string | n/a | yes |
| tags | Add custom tags to all resources | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| backend\_address\_pool | backend address pool |
| lb\_address | lb address |

