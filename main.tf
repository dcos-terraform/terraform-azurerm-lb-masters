/**
 * [![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/buildStatus/icon?job=dcos-terraform%2Fterraform-azurerm-lb-masters%2Fsupport%252F0.1.x)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-azurerm-lb-masters/job/support%252F0.1.x/)
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
 *   version = "~> 0.1.0"
 *
 *   cluster_name = "production"
 *
 *   location = ["North Europe"]
 *   resource_group_name = "my-resource-group"
 * }
 *```
 */

provider "azurerm" {}

module "masters" {
  source  = "dcos-terraform/lb/azurerm"
  version = "~> 0.1.0"

  cluster_name = "${var.cluster_name}"

  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"

  providers = {
    azurerm = "azurerm"
  }

  probe {
    port = 5050
  }

  tags = "${var.tags}"
}
