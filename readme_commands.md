
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

# Shutdown, cleanup and rebuild, start and see status
sudo docker-compose down && sudo docker-compose up -d --remove-orphans && sudo docker-compose start && sudo docker-compose ps

Removes the containers, default network, and the WordPress database:
docker-compose down --volumes

# Automatic reload with entr command:
echo ./docker-compose.yml | entr ./remove-and-reload.sh


# MsSql
https://hub.docker.com/_/microsoft-mssql-server?tab=description
docker exec -it <container_id|container_name> /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P <your_password>

# Mongo
https://hub.docker.com/r/amd64/mongo/

# Login to container
docker exec -it 3cdb7385c127 sh