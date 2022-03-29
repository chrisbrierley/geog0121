# geog0121
The materials and guides used to support the teaching of the Climate Modelling MSc module at UCL Geography

You can clone this repository and run all the practicals, either on your own computer or on the Geography cluster

## Running Jupyter locally via Docker

- Download & install Docker Desktop app https://www.docker.com/get-started
- Ensure Docker Desktop is running
- Clone this repo & navigate to repo directory in terminal
- Run `sh docker_start.sh`, which will download the Docker image & load up a container with the Jupyter environment

### Compiling the Docker image from scratch

- Download & install Docker Desktop app https://www.docker.com/get-started
- Ensure Docker Desktop is running
- Clone this repo & navigate to repo directory in terminal
- Build the image by running `docker build -t geog0121 .`
- Load a container by running `docker run -i --rm --volume=${PWD}/practicals:/home/docker/geog0121 -w /home/docker/geog0121 -p 8888:8888 -t geog0121`
