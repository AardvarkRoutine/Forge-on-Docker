docker build -t paul/forge .
docker rm pauls_forge
docker container create --name pauls_forge --network host paul/forge
docker start pauls_forge
