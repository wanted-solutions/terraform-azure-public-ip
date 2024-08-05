# terraform-module-template

Repository template for Terraform module.

> If you'd like to check module metadata usage in detail you can do it [here](./examples-module-metadata/README.md). Remove this quote and whole directory before publishing your module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_public_ip.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocation_method"></a> [allocation\_method](#input\_allocation\_method) | value of the allocation method for the public IP address. | `string` | `"Dynamic"` | no |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Module metadata object to give user possibility to override default module values. | <pre>object({<br>    default_tags             = optional(map(string), {})<br>    resource_timeouts        = optional(map(map(string)), {})<br>    validator_error_messages = optional(map(string), {})<br>    validator_expressions    = optional(map(string), {})<br>  })</pre> | `{}` | no |
| <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name) | The name of the public IP address. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the public IP address. | `string` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | The SKU of the Public IP. Possible values are Basic and Standard. | `string` | `"Basic"` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | The Tier of the Public IP. Possible values are Regional and Global. | `string` | `"Regional"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key value pairs of custom tags to be applied to the module resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | Object of the public IP address. |
<!-- END_TF_DOCS -->

## Usage

> ADD content about usage