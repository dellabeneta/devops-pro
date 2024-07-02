#!/bin/bash

# Script para criar um banco de dados MYSQL em um container Docker
# Autor: Michel Torres Dellabeneta
# Contato: https://linktr.ee/dellabeneta

# Definição de variáveis
CONTAINER_NAME="meu_sql"
DB_NAME="curso_docker"
DB_USER="docker_usr"
DB_PASSWORD="docker_pwd"
DB_PORT="3306"

# Executa o container MySQL
docker run --name $CONTAINER_NAME \
  -e MYSQL_DATABASE=$DB_NAME \
  -e MYSQL_USER=$DB_USER \
  -e MYSQL_PASSWORD=$DB_PASSWORD \
  -e MYSQL_ROOT_PASSWORD=$DB_PASSWORD \ # Definir a senha do root do MySQL, normalmente requerida.
  -p $DB_PORT:$DB_PORT \
  -d mysql:latest

echo "Container MySQL criado com sucesso!"
