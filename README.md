[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/buildStatus/icon?job=dcos-terraform%2Fterraform-azurerm-lb-masters%2Fsupport%252F0.2.x)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-lb-masters/job/support%252F0.2.x/)

Azure LB Masters
============
This module create a load balancer to access the masters externally.

EXAMPLE
-------

```hcl
module "lb-masters" {
  source  = "dcos-terraform/lb-masters/azurerm"
  version = "~> 0.2.0"

  cluster_name = "production"

  location = ["North Europe"]
  resource_group_name = "my-resource-group"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_name | Name of the DC/OS cluster | string | n/a | yes |
| instance\_nic\_ids | List of instance nic ids created by this module | list | n/a | yes |
| ip\_configuration\_names | List of ip configuration names associated with the instance nic ids | list | n/a | yes |
| location | Azure Region | string | n/a | yes |
| num | How many instances should be created | string | n/a | yes |
| resource\_group\_name | Name of the azure resource group | string | n/a | yes |
| name\_prefix | Name Prefix | string | `""` | no |
| tags | Add custom tags to all resources | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| backend\_address\_pool | backend address pool |
| lb\_address | lb address |

