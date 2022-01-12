# proxy

A terraform script which creates a proxy.
I do TDD on it.
I created a Makefile with make unit which uses:

* terraform validate
* tflint (for static checking)
  * curl https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash
* tfsec (for security checking)
  * sudo wget https://github.com/tfsec/tfsec/releases/download/v0.39.42/tfsec-linux-amd64 -O tfsec
  * sudo cp tfsec /usr/local/bin
  * sudo chmod 755 /usr/local/bin/tfsec
* conftest (for writing unittests)
  * wget https://github.com/open-policy-agent/conftest/releases/download/v0.25.0/conftest_0.25.0_Linux_x86_64.tar.gz
  * tar xzf conftest_0.25.0_Linux_x86_64.tar.gz
  * sudo mv conftest /usr/local/bin
* checkov (for additional checks)
  * pip3 install checkov


run the makefile with:
* make unittest


You can always create new tests in the tests folder and add it to the makefile. To have the tests run just create the structure (new folder + main.tf File)
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | The project to set in tag | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to deploy to | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The cidr\_block to set in VPC | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->