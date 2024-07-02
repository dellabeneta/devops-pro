# PostgreSQL Docker Container Setup

Este repositório contém um script (criar_bd_mysql.sh) para criar um banco de dados MySQL em um container Docker de forma simplificada em sua máquina.

## Pré-requisitos

Certifique-se de ter o Docker instalado na sua máquina antes de prosseguir.

## Como Usar

1. Clone este repositório:

   ```bash
   git clone https://github.com/dellabeneta/devops-pro.git
   cd devops-pro/desafios/modulo_docker/desafio_02/
   ```

2. Execute o script `criar_bd_mysql.sh` para iniciar o container MySQL:

   ```bash
   ./criar_bd_mysql.sh
   ```

   Certifique-se de ter permissões adequadas para executar o script (`chmod +x criar_bd_mysql.sh`, se necessário).

3. Verifique se o container MySQL foi criado e está em execução:

   ```bash
   docker container ls
   ```

4. Conecte-se ao banco de dados:

   - **Host:** localhost (ou o endereço IP da sua máquina)
   - **Porta:** 3306
   - **Database:** curso_docker
   - **Usuário:** docker_usr
   - **Senha:** docker_pwd

5. Para parar e remover o container MySQL e a imagem base do Container:

   ```bash
   docker container stop meu_mysql
   docker container rm meu_mysql
   docker image rm mysql:latest
   ```

## Observação!

A criação do container Docker com banco MySQL também pode ser feita de forma direta, via linha de comando:
```
docker run --name meu_mysql -e MYSQL_DATABASE=curso_docker -e MYSQL_USER=docker_usr -e MYSQL_PASSWORD=docker_pwd -e MYSQL_ROOT_PASSWORD=docker_pwd -p 3306:3306 -d mysql:latest
```

## Contato

Autor: Michel Torres Dellabeneta  
Contato: [linktr.ee/dellabeneta](https://linktr.ee/dellabeneta)
