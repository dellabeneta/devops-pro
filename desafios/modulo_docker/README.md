# PostgreSQL Docker Container Setup

Este repositório contém um script (postgresql.sh) para criar um banco de dados PostgreSQL em um container Docker de forma simplificada em sua máquina.

## Pré-requisitos

Certifique-se de ter o Docker instalado na sua máquina antes de prosseguir.

## Como Usar

1. Clone este repositório:

   ```bash
   git clone https://github.com/dellabeneta/devops-pro.git
   cd devops-pro/desafios/modulo_docker/
   ```

2. Execute o script `criar_bd_postgres.sh` para iniciar o container PostgreSQL:

   ```bash
   ./criar_bd_postgres.sh
   ```

   Certifique-se de ter permissões adequadas para executar o script (`chmod +x criar_bd_postgres.sh`, se necessário).

3. Verifique se o container PostgreSQL foi criado com sucesso:

   ```bash
   docker ps -a
   ```

4. Conecte-se ao banco de dados:

   - **Host:** localhost (ou o endereço IP da sua máquina)
   - **Porta:** 5432
   - **Database:** curso_docker
   - **Usuário:** docker_usr
   - **Senha:** docker_pwd

5. Para parar e remover o container PostgreSQL:

   ```bash
   docker stop meu_postgres
   docker rm meu_postgres
   ```

## Observação!

É possível também apenas executar o comando desrito no aquivo "cli.txt" (neste mesmo repositório), caso não queira utilizar o shell script.


## Contato

Autor: Michel Torres Dellabeneta  
Contato: [linktr.ee/dellabeneta](https://linktr.ee/dellabeneta)
