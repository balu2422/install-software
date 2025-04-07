#!/bin/bash

# Download the latest release of kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# Make the kubectl binary executable
chmod +x ./kubectl

# Move the binary to your PATH
sudo mv ./kubectl /usr/local/bin/kubectl

# Verify the installation
kubectl version --client

echo "kubectl installation completed successfully!"
