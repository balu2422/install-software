#!/bin/bash

# Update system packages
echo "Updating system..."
sudo apt update

# Install required dependencies
echo "Installing dependencies..."
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker GPG key
echo "Adding Docker GPG key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
echo "Adding Docker repository..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package list
echo "Updating package list..."
sudo apt update

# Install Docker
echo "Installing Docker..."
sudo apt-get install -y docker-ce

# Verify Docker installation
echo "Checking Docker version..."
docker --version

# Start and enable Docker service
echo "Starting and enabling Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

# Add current user to the Docker group
echo "Adding user to Docker group..."
sudo usermod -aG docker $USER

# Inform the user to log out and back in
echo "Please log out and log back in to apply the Docker group changes."

echo "Docker installation completed successfully!"