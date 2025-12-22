
# Docker Cheatsheet

## Container
docker ps
docker ps -a
docker stop <id>
docker rm <id>
docker logs <id>
docker exec -it <id> sh

## Image
docker images
docker pull image
docker rmi image

## Volume
docker volume ls
docker volume inspect name
docker volume rm name

## Compose
docker compose up
docker compose up -d
docker compose down
docker compose logs -f

## Cleanup
docker system df
docker system prune

