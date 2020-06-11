/**
 * [![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/buildStatus/icon?job=dcos-terraform%2Fterraform-azurerm-lb-masters%2Fsupport%252F0.2.x)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-lb-masters/job/support%252F0.2.x/)
 *
 * Azure LB Masters
 * ============
 * This module create a load balancer to access the masters externally.
 *
 * EXAMPLE
 * -------
 *
 *```hcl
 * module "lb-masters" {
 *   source  = "dcos-terraform/lb-masters/azurerm"
 *   version = "~> 0.2.0"
 *
 *   cluster_name = "production"
 *
 *   location = ["North Europe"]
 *   resource_group_name = "my-resource-group"
 * }
 *```
 */

provider "azurerm" {
}

module "masters" {
  source  = "dcos-terraform/lb/azurerm"
  version = "~> 0.2.0"

  cluster_name = var.cluster_name
  name_prefix  = var.name_prefix

  location            = var.location
  resource_group_name = var.resource_group_name

  instance_nic_ids = [var.instance_nic_ids]

  providers = {
    azurerm = azurerm
  }

  probe = {
    port = 5050
  }

  num = var.num

  tags = var.tags
}

