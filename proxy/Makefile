unittest:
	terraform validate
	tflint
	tfsec --concise-output
	checkov -d ./ --compact --no-guide
	conftest test -p tests/vpc.rego ./modules/vpc/main.tf
	conftest test -p tests/subnet.rego ./modules/subnet/main.tf
	conftest test -p tests/securitygroup.rego ./modules/securitygroup/main.tf
	