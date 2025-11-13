#/bin/bash

sudo apt update
sudo apt install apache2 php libapache2-mod-php mysql-server php-mysql -y
sudo systemctl enable apache2
sudo systemctl enable mysql
sudo systemctl daemon-reload
sudo systemctl restart apache2
sudo systemctl restart mysql
sudo ufw status
sudo apt install ufw -y
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw enable
sudo reboot
