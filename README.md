# python dockerization

This is a simple demonstration of docker containerization of existing code to standardize it to run on any OS

Install docker before running docker commands from command line
Also open docker desktop so that daemon can run in background
Run the following docker commands to host the code on docker container

docker image build -t demonstration_code .
docker run -p 5000:5000 -d demonstration_code


First command will build a docker image from dockerfile located at current location represented by ., we named the image demonstration_code
In the second command, we run the demonstration_code image with ports 5000 on pc mapped to 5000 on docker container

Once the container is running, access 127.0.0.1:5000 to see response from code hosted on container

If you want to stop a docker container, get its CONTAINER ID using 'docker ps' command
use 'docker stop CONTAINER ID' to stop that particular container