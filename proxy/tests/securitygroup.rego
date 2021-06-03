package main


deny[msg] {
  not input.resource.aws_security_group.ident
  msg = "Define default security group"
}

deny[msg] {
  count(input.resource.aws_security_group.ident.ingress) > 3
  msg = "Only http,https and ssh are allowed on default securitygroup on ingress"
}

deny[msg] {
  count(input.resource.aws_security_group.ident.egress) > 3
  msg = "Only http,https and ssh are allowed on default securitygroup on egress"
}


deny[msg] {
  not input.resource.aws_security_group.ident.ingress.to_port == 80
  msg = "Default security group should allow http on port 80 on ingress"
}

deny[msg] {
  not input.resource.aws_security_group.ident.egress.to_port == 80
  msg = "Default security group should allow http on port 80 on egress"
}

deny[msg] {
  not input.resource.aws_security_group.ident.ingress.to_port == 443
  msg = "Default security group should allow https on port 443 on ingress"
}

deny[msg] {
  not input.resource.aws_security_group.ident.egress.to_port == 443
  msg = "Default security group should allow https on port 443 on egress"
}

deny[msg] {
  not input.resource.aws_security_group.ident.ingress.to_port == 22
  msg = "Default security group should allow ssh on port 22 on ingress"
}

deny[msg] {
  not input.resource.aws_security_group.ident.egress.to_port == 22
  msg = "Default security group should allow ssh on port 22 on egress"
}