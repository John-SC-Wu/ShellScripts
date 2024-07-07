#!/bin/bash
set -x  # Enable debug mode
sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli docker-compose-plugin
sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce docker-compose-plugin

# The above commands will not remove images, containers, volumes, or user created config files on host. 
# To delete all images, containers, and volumes run the following commands:
sudo rm -rf /var/lib/docker /etc/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock
sudo rm -rf /var/lib/containerd
sudo rm -r ~/.docker
set +x  # Disable debug mode
