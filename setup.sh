#!/bin/bash

# Set environment variable with GitHub username
echo "export GITHUB_USERNAME=VUMat" > /root/.bash_profile

# Write the code to config.hcl
echo "cluster_addr  = \"https://<HOSTNAME>:8201\"" > config.hcl
echo "api_addr      = \"https://<HOSTNAME>:8200\"" >> config.hcl
echo "disable_mlock = true" >> config.hcl

# Replace <HOSTNAME> in config.hcl
sed -i 's/<HOSTNAME>/vault-server.hashicorp.com/g' config.hcl
