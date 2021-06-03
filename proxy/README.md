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
* make unittest -i --> on Development
* make unittest --> on CICD


You can always create new tests in the tests folder and add it to the makefile. To have the tests run just create the structure (new folder + main.tf File)