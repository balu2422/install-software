#!/bin/bash

# Update system packages
echo "Updating system..."
sudo apt update

# Install required dependencies
echo "Installing dependencies..."
sudo apt-get install -y gnupg software-properties-common curl

# Add HashiCorp GPG key
echo "Adding HashiCorp GPG key..."
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add HashiCorp repository
echo "Adding HashiCorp repository..."
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Update package list
echo "Updating package list..."
sudo apt update

# Install Terraform
echo "Installing Terraform..."
sudo apt-get install -y terraform

# Verify Terraform installation
echo "Checking Terraform version..."
terraform --version

echo "Terraform installation completed successfully!"