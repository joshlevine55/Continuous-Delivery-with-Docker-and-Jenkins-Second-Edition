#!/bin/bash

set -e  # optional, but recommended to exit on error

apt update && apt install -y curl apt-transport-https ca-certificates gnupg

# Add GCP Cloud SDK repo
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
  | tee /etc/apt/sources.list.d/google-cloud-sdk.list

# Download and add Google Cloud public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
  | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update and install
apt update && apt install -y google-cloud-sdk

#Install auth plugin
apt-get install google-cloud-cli-gke-gcloud-auth-plugin

