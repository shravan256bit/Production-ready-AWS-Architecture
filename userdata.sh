#!/bin/bash

apt-get update -y

apt-get install -y apache2

systemctl enable apache2
systemctl start apache2


echo "<h1>Hello from Apache on $(hostname) powerd by abishek veeramala</h1>" > /var/www/html/index.html