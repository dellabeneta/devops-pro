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

3. Verifique se o container PostgreSQL foi criado e está em execução:

   ```bash
   docker container ls
   ```

4. Conecte-se ao banco de dados:

   - **Host:** localhost (ou o endereço IP da sua máquina)
   - **Porta:** 5432
   - **Database:** curso_docker
   - **Usuário:** docker_usr
   - **Senha:** docker_pwd

5. Para parar e remover o container PostgreSQL e a imagem base do Container:

   ```bash
   docker container stop meu_postgres
   docker container rm meu_postgres
   docker image rm postgres:latest
   ```

## Observação!

Tudo isso que fizemos também pode ser feito de forma direta, via linha de comando, utilizando o comando:

```
docker run --name meu_postgres -e POSTGRES_DB=curso_docker -e POSTGRES_USER=docker_usr -e POSTGRES_PASSWORD=docker_pwd -p 5432:5432 -d postgres
```

## Contato

Autor: Michel Torres Dellabeneta  
Contato: [linktr.ee/dellabeneta](https://linktr.ee/dellabeneta)
