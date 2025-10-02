#!/bin/bash
sudo dnf update -y
sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

# Get the hostname first
HOSTNAME=$(hostname)
echo "<html><h1><p> ${HOSTNAME}</p></h1></html>" | sudo tee /var/www/html/index.html



# At work we have couple engineer running terraform code locally after making changes to the tf file. the goal is to set up some type of automation to help run those commands. 
# since we are using github action already , do some research on how we can execute those terraform command thru a ci/cd pipeline. 
# also check if there are some terraform scaning tool that can be integrated in the pipeline
