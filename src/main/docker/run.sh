docker pull 192.168.159.1:7000/microservice/configurationservice:latest
docker rm $(docker stop $(docker ps -a | grep '192.168.159.1:7000/microservice/configurationservice' | awk '{print $1;}')) && 0
docker run -d -p 8889:8889 192.168.159.1:7000/microservice/configurationservice:latest
