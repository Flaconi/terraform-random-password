# Random password generator

[![Build Status](https://github.com/Flaconi/terraform-random-password/actions/workflows/terraform.yml/badge.svg)](https://github.com/Flaconi/terraform-random-password/actions/workflows/terraform.yml)
[![Tag](https://img.shields.io/github/tag/Flaconi/terraform-random-password.svg)](https://github.com/Flaconi/terraform-random-password/releases)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

Using Terragrunt Dependencies, this module is simple to use as input for the password of an RDS Database

This Terraform module creates random_passwords with predefined minimal strength of:
 * 16 chars length
 * Minimum 2 upper
 * Minimum 2 lower
 * Minimum 2 numbers
 * Minimum 2 special chars
 * Special chars defined are "!@#$%&*()-_=+[]{}<>:?"


## Usage

### Not using Keeper

```hcl
module "random_password_no_keeper" {
  source = "../../"
}

output "random_password_no_keeper" {
  value = module.random_password_no_keeper.this_password
}
```

### Using Keeper

```hcl
## Without Keeper
module "random_password_with_keeper" {
  source = "../../"
  keepers = {
    # Generate a new password each time we have a new timestamp
    time = timestamp()
  }
}

output "random_password_with_keeper" {
  value = module.random_password_with_keeper.this_password
}
```


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_password.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keepers"></a> [keepers](#input\_keepers) | Arbitrary map of values that, when changed, will trigger recreation of resource. | `map(string)` | `{}` | no |
| <a name="input_length"></a> [length](#input\_length) | The length of the string desired. | `number` | `16` | no |
| <a name="input_lower"></a> [lower](#input\_lower) | Include lowercase alphabet characters in the result. | `bool` | `true` | no |
| <a name="input_min_lower"></a> [min\_lower](#input\_min\_lower) | Minimum number of lowercase alphabet characters in the result. | `number` | `2` | no |
| <a name="input_min_numeric"></a> [min\_numeric](#input\_min\_numeric) | Minimum number of numeric characters in the result. | `number` | `2` | no |
| <a name="input_min_special"></a> [min\_special](#input\_min\_special) | Minimum number of special characters in the result. | `number` | `2` | no |
| <a name="input_min_upper"></a> [min\_upper](#input\_min\_upper) | Minimum number of uppercase alphabet characters in the result. | `number` | `2` | no |
| <a name="input_numeric"></a> [numeric](#input\_numeric) | Include numeric characters in the result. | `bool` | `true` | no |
| <a name="input_override_special"></a> [override\_special](#input\_override\_special) | Supply your own list of special characters to use for string generation. | `string` | `"!@#$%&*()-_=+[]{}<>:?"` | no |
| <a name="input_special"></a> [special](#input\_special) | Include special characters in the result. | `bool` | `true` | no |
| <a name="input_upper"></a> [upper](#input\_upper) | Include uppercase alphabet characters in the result. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_password"></a> [password](#output\_password) | n/a |
| <a name="output_password_as_json"></a> [password\_as\_json](#output\_password\_as\_json) | n/a |
| <a name="output_password_as_list"></a> [password\_as\_list](#output\_password\_as\_list) | n/a |
| <a name="output_password_as_yaml"></a> [password\_as\_yaml](#output\_password\_as\_yaml) | n/a |
| <a name="output_password_b64"></a> [password\_b64](#output\_password\_b64) | n/a |
| <a name="output_password_md5"></a> [password\_md5](#output\_password\_md5) | n/a |
| <a name="output_password_sha1"></a> [password\_sha1](#output\_password\_sha1) | n/a |
| <a name="output_password_sha256"></a> [password\_sha256](#output\_password\_sha256) | n/a |
| <a name="output_password_sha512"></a> [password\_sha512](#output\_password\_sha512) | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


## License

[MIT](LICENSE)

Copyright (c) 2021 [Flaconi](https://github.com/Flaconi)
