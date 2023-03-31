docker stop $(docker  ps  -q) 

docker rmi -f $(docker image ls  -q)


docker build -t nginx .

 --- delete all 
docker system prune -a