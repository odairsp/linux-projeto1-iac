#!/bin/bash

echo "Iniciando configuração da infraestrutura..."
echo "Criando os diretórios..."

mkdir /publica /adm /ven /sec

echo "Criando os grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publica
chmod 770 /adm /ven /sec

echo "Criando os usuários..."

useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM
useradd joao -c "Joao" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_ADM

useradd debora -c "Debora" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd sebastian -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN
useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_VEN

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC
useradd rogerio -c "Rogerio" -s /bin/bash -m -p $(openssl passwd -1 123) -G GRP_SEC

echo "Término das configurações!"
