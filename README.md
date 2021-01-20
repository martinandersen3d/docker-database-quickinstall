# Quick install guide for Postgress, MSSQl-Server, MySQL, MongoDB using docker

Ubuntu:

Install Docker
https://docs.docker.com/engine/install/ubuntu/

Install Docker-Composer
https://docs.docker.com/compose/install/


# Oneliner - Shutdown containers, cleanup and rebuild, start and see status
sudo docker-compose down && sudo docker-compose up -d --remove-orphans && sudo docker-compose start && sudo docker-compose ps


# Docker Compose
docker-compose up -d

build image and remove old images:
sudo docker-compose up -d --remove-orphans

# Start stop
sudo docker-compose start
sudo docker-compose stop

# Shutdown and cleanup
removes the containers and default network, but preserves your database:
docker-compose down

Removes the containers, default network, and the database:
docker-compose down --volumes

# Automatic reload with entr command:
** It will auto reload all containers, every time you change the docker-compose.yml file **
sudo apt install entr
echo ./docker-compose.yml | entr ./remove-container-and-rebuild.sh

# List containers id
sudo docker ps

# Login to container
docker exec -it 3cdb7385c127 sh
------------------------------------------------------------------

# MsSql
https://hub.docker.com/_/microsoft-mssql-server?tab=description
docker exec -it <container_id|container_name> /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P <your_password>

# Mongo
https://hub.docker.com/r/amd64/mongo/


# Mysql
https://hub.docker.com/r/amd64/mysql

