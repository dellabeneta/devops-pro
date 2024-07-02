#!/bin/bash

# Script para criar um banco de dados PostgreSQL em um container Docker
# Autor: Michel Torres Dellabeneta
# Contato: https://linktr.ee/dellabeneta

# Definição de variáveis
CONTAINER_NAME="meu_postgres"
DB_NAME="curso_docker"
DB_USER="docker_usr"
DB_PASSWORD="docker_pwd"
DB_PORT="5432"

# Executa o container PostgreSQL
docker run --name $CONTAINER_NAME \
  -e POSTGRES_DB=$DB_NAME \
  -e POSTGRES_USER=$DB_USER \
  -e POSTGRES_PASSWORD=$DB_PASSWORD \
  -p $DB_PORT:$DB_PORT \
  -d postgres

echo "Container PostgreSQL criado com sucesso!"
