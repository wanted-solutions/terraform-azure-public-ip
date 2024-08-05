// Here is perfect place for your module variables
variable "public_ip_name" {
  description = "The name of the public IP address."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the public IP address."
  type        = string
}

variable "sku" {
  description = "The SKU of the Public IP. Possible values are Basic and Standard."
  type        = string
  default     = "Basic"
}

variable "sku_tier" {
  description = "The Tier of the Public IP. Possible values are Regional and Global."
  type        = string
  default     = "Regional"
}

variable "allocation_method" {
  description = "value of the allocation method for the public IP address."
  type        = string
  default     = "Dynamic"
}