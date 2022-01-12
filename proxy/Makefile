unittest:
	terraform validate
	tflint
	tfsec --concise-output
	conftest pull git::https://github.com/KieniL/confpolicy.git
	conftest test ./modules/vpc/main.tf
	conftest test ./modules/subnet/main.tf
	conftest test ./modules/securitygroup/main.tf
	checkov -d ./ --compact --no-guide
	