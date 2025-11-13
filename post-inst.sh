#!/bin/bash

echo "Atualizando o apt" >> /home/ubuntu/script.log
sudo apt update

echo "Instalando o LAMP" >> /home/ubuntu/script.log
sudo apt install apache2 php libapache2-mod-php mysql-server php-mysql -y

echo "Habilitando o Apache" >> /home/ubuntu/script.log
sudo systemctl enable apache2

echo "Habilitando o MySQL" >> /home/ubuntu/script.log
sudo systemctl enable mysql

echo "Recarregando o daemon" >> /home/ubuntu/script.log
sudo systemctl daemon-reload

echo "Reiniciando o Apache" >> /home/ubuntu/script.log
sudo systemctl restart apache2

echo "Reiniciando o MySQL" >> /home/ubuntu/script.log
sudo systemctl restart mysql

echo "Instalando o UFW" >> /home/ubuntu/script.log
sudo ufw status
sudo apt install ufw -y

echo "Definindo regras do firewall" >> /home/ubuntu/script.log
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp

echo "Habilitando o firewall" >> /home/ubuntu/script.log
sudo ufw enable -y

echo "Fim do script" >> /home/ubuntu/script.log
sudo reboot
