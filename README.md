Clone the repo, cd into it, and perform the following command to build the docker image:
```
docker build -t nodered-dht .
```
To run:
```
docker run -it -p 1880:1880 --name mynodered -v node_red_data:/data --privileged nodered-dht
```
