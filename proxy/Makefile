unittest:
	terraform validate
	tflint
	tfsec --concise-output
	conftest test -p tests/vpc.rego ./modules/vpc/main.tf
	conftest test -p tests/subnet.rego ./modules/subnet/main.tf
	conftest test -p tests/securitygroup.rego ./modules/securitygroup/main.tf
	checkov -d ./ --compact --no-guide
	