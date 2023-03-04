#!/bin/bash

echo "Atualizando o Sistema e instalando aplicações"

sudo apt update
sudo apt upgrade -y
sudo apt install unzip apache2 -y

echo "Entrando no diretório TEMP"

cd /tmp
wget https://github.com/wiltonsg/novaincanto/archive/refs/heads/main.zip
unzip main.zip
mv novaincanto-main novaincanto
cd novaincanto
sudo cp -R * /var/www/html
