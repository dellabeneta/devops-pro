#!/bin/bash

# Script para criar um banco de dados MongoDB em um container Docker
# Autor: Michel Torres Dellabeneta
# Contato: https://linktr.ee/dellabeneta

# Definição de variáveis
CONTAINER_NAME="meu_mongodb"
DB_USER="mongo_usr"
DB_PASSWORD="mongo_pwd"
DB_PORT="27017"

# Executa o container MongoDB
docker run --name $CONTAINER_NAME \
  -e MONGO_INITDB_ROOT_USERNAME=$DB_USER \
  -e MONGO_INITDB_ROOT_PASSWORD=$DB_PASSWORD \
  -p $DB_PORT:$DB_PORT \
  -d mongo:latest

echo "Container MongoDB criado com sucesso!"
