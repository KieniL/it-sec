# Useful commands:

## Download certificate:

openssl s_client -connect {url}:{port} 2>&1 < /dev/null | sed -n '/-----BEGIN,/-----END/p' > {filename}.pem



## Get certificate chain:

openssl s_client -connect {url}:{port} -showcerts 2>&1 < /dev/null


## Check if certificate has a valid OCSP (Online Certificate Status Protocol)

openssl x509 -noout -ocsp_uri -in {certificatefile}



## Send an ocsp request:

openssl ocsp -issuer {rootcacertificate}.pem -cert {urltocheckcertificate}.pm -text -url {ocspURLofCA}
