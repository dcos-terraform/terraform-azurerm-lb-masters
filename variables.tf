variable "cluster_name" {
  description = "Name of the DC/OS cluster"
}

variable "instance_nic_ids" {
  description = "List of instance nic ids created by this module"
  type        = "list"
}

variable "resource_group_name" {
  description = "Name of the azure resource group"
}

variable "location" {
  description = "Azure Region"
}

variable "tags" {
  description = "Add custom tags to all resources"
  type        = "map"
  default     = {}
}

variable "num" {
  description = "How many instances should be created"
}

variable "name_prefix" {
  description = "Name Prefix"
  default     = ""
}

variable "adminrouter_grpc_proxy_port" {
  description = ""
  default     = 12379
}
