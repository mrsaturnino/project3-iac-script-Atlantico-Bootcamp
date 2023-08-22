#!/bin/bash

echo "atualizando o servidor..."

sudo apt update
sudo apt upgrade -y

echo "instalando o apache2"

sudo apt install apache2 -y

echo "instalando o unzip"

sudo apt install unzip -y

echo "fazendo download do arquivo zip da aplicacao"

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "download da aplicacao concluido."

echo "descompactando a aplicacao"

unzip main.zip

cd linux-site-dio-main

echo "copiando os arquivos da aplicacao para o diretorio do servidor apache"

sudo rm /var/www/html/index.html
sudo cp -R * /var/www/html
