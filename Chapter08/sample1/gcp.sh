#!/bin/bash

apt update && apt install -y curl apt-transport-https ca-certificates gnupg 

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \ 

  | tee /etc/apt/sources.list.d/google-cloud-sdk.list 

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \ 

  | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - 

apt update && apt install -y google-cloud-sdk 
