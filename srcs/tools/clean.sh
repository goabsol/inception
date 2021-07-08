cd srcs
docker-compose down --rmi all
docker-compose down -v
cd ..
docker system prune -f
export $(cat ./srcs/.env | xargs); rm -rf "/home/$LOGIN/data"