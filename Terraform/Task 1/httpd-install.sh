#! /bin/bash
# Instance Identity Metadata Reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html
sudo apt update -y
#Have to change it to 'apache2' because 'httpd' package does not exist in Ubuntu
sudo apt install -y nginx #apache server web
sudo systemctl enable nginx
sudo service nginx start  
sudo echo '<h1>Welcome to my page - Task 1</h1>' | sudo tee /var/www/html/index.html #update with text
sudo mkdir /var/www/html/app1
sudo echo '<!DOCTYPE html> <html> <body style="background-color:rgb(250, 210, 210);"> <h1>Welcome to my page - Task 1</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/app1/metadata.html
