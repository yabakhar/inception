
init:
	mkdir -p /Users/yabakhar/Desktop/inception_volume/wordpress /Users/yabakhar/Desktop/inception_volume/mariadb
up: 
	docker-compose -f ./srcs/docker-compose.yaml up --build
down:
	docker-compose -f ./srcs/docker-compose.yaml down
fclean:
	- clean
	- docker stop $(docker  ps  -q) 
	- docker rmi -f $(docker ps -aq )
	- docker rmi -f $(docker image ls  -q)
	- docker volume rm srcs_wordpress
	- docker volume rm srcs_DB 
	- rm -rf /Users/yabakhar/Desktop/inception_volume/mariadb/*
	- rm -rf /Users/yabakhar/Desktop/inception_volume/wordpress/*
re: fclean init up


wo: 
	- docker exec -it wordpress bash
ng: 
	- docker exec -it nginx bash
ma: 
	- docker exec -it mariadb bash