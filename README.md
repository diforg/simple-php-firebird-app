# simple-php-firebird-app
A simple CRUD app, using PHP and Firebird.

EDIT:

I am discontinued this project indefinitely to the difficulty and time spent researching ways to integrate firebird into the lumen project.

My first difficulty was create a docker that has a machine with version and extensions with the most current repository avaiable that integrates php with firebird. I spent a long time gathering all the information to assemble the most suitable machine for these requirements.

That latest difficult has been in integrating the database into migration system and I noticed that the library used doesn't have this integration.

As my initial goal was to set up a simple project that uses all the best coding methodologies and practices, I wouldn't want this project to have a table creation system that isn't through Laravel's native migrations.

-----

Instruções para rodar o projeto:

1. Baixe este repositório em sua máquina local

git clone https://github.com/diforg/simple-php-firebird-app.git

2. Execute o Docker Compose

docker-compose up

3. Acesse o CLI do container do web service

docker exec -it ws-php8.1 /bin/bash

4. Rode o Composer no bash do web service

composer install


