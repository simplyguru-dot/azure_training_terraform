variable "location" {
 type = string
 description = "The location where resources will be created"
 default = "eastus"
}

variable "tags" {
 description = "A map of the tags to use for the resources that are deployed"
 type        = "map"

 default = {
   environment = "azure-training"
 }
}

variable "resource_group_name" {
 type = string
 description = "The name of the resource group in which the resources will be created"
 default     = "ScaleSetGroup"
}

variable "application_port" {
   description = "The port that you want to expose to the external load balancer"
   default     = 80
}

variable "admin_user" {
   description = "User name to use as the admin account on the VMs that will be part of the VM Scale Set"
   default     = "azureuser"
}

variable "admin_password" {
   description = "Default password for admin account"
}

variable "vm_size" {
 type = string
 description = "VM Size"
 default     = "Standard_DS1_v2"
}
