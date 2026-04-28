#!/bin/bash

yum update -y
yum install -y nginx

systemctl start nginx
systemctl enable nginx

echo "<h1>SRE Terraform Automation</h1>" > /usr/share/nginx/html/index.html
echo "<p>Provisioned using Terraform and configured with Linux automation.</p>" >> /usr/share/nginx/html/index.html
