SRC = ./srcs/docker-compose.yml
DOMAIN_NAME = $(shell export $$(cat ./srcs/.env | xargs); echo $$DOMAIN_NAME)
CHECK_LOGIN = $(shell export $$(cat ./srcs/.env | xargs); grep -q $$DOMAIN_NAME /etc/hosts && echo YES)

init:
ifeq ($(CHECK_LOGIN),YES)
	@echo "Domain name already set to" ${DOMAIN_NAME} 
else
	@echo "127.0.0.1       ${DOMAIN_NAME}" >> /etc/hosts
	@echo "Domain name has been set to" ${DOMAIN_NAME}
endif
	@$(shell export $$(cat ./srcs/.env | xargs); mkdir -p "/home/$$LOGIN/data/mariadb"; mkdir -p "/home/$$LOGIN/data/adminer"; mkdir -p "/home/$$LOGIN/data/wordpress"; mkdir -p "/home/$$LOGIN/data/static")
	@echo "Volume folder has been set to" $(shell export $$(cat ./srcs/.env | xargs); echo "/home/$$LOGIN/data")

all: init
	sudo docker-compose -f ${SRC} build 
up:
	sudo docker-compose -f ${SRC} up -d --remove-orphans
start:
	docker-compose -f ${SRC} start
down:
	docker-compose -f ${SRC} down
volumes:
	docker volume ls
ps:
	docker-compose -f ${SRC} ps

run_wp:
	docker container exec -it wordpress /bin/bash
run_ng:
	docker container exec -it nginx /bin/bash
run_db:
	docker container exec -it mariadb /bin/bash
run_ad:
	docker container exec -it adminer /bin/bash

clean: down
	./srcs/tools/clean.sh 

fclean: clean

re: fclean all