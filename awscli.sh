#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo apt update -y

# Install unzip and curl
echo "Installing dependencies (unzip, curl)..."
sudo apt install -y unzip curl

# Download AWS CLI v2
echo "Downloading AWS CLI v2..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip installer
echo "Extracting AWS CLI..."
unzip awscliv2.zip

# Run installer
echo "Installing AWS CLI..."
sudo ./aws/install

# Verify installation
echo "Verifying AWS CLI version..."
aws --version

# Cleanup
echo "Cleaning up..."
rm -rf aws awscliv2.zip

echo "✅ AWS CLI installed successfully!"

