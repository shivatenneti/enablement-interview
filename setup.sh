#!/bin/bash

echo 'export GITHUB_USERNAME="shivatenneti"' >> .bash_profile

source .bash_profile

echo "GitHub username set as: $GITHUB_USERNAME"

content='cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true'

echo "$content" > config.hcl

updated_content=$(echo "$content" | sed 's|<HOSTNAME>|vault-server.hashicorp.com|g')

echo "$updated_content" > config.hcl
