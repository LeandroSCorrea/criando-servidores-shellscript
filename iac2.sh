#!/bin/bash
echo -s "\n#---Instalando servidor web via shell script---#\n\n"

echo -e "--->>Atualizando o sistema\n\n"

apt-get updade

echo -e "\n----->>Inserindo atualizações\n\n"

apt-get upgrade -y

echo -e "\n------->>Instalando o servido apache2\n\n"

apt install apache2 -y

echo -e "\n--------->>Instalando o unzip\n\n"

apt install unzip -y

echo -e "\n-->>Baixando a aplicação compactada via site\n\n"

cd  /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo -e "\n---->>Descompactando arquivos\n\n"

unzip main.zip

echo -e "\n------>>Copiando os arquivos descompactados para o diretório html"
cd linux-site-dio-main

cp -R * /var/www/html

echo -e "\n\n------>>Fim!\n\n"
