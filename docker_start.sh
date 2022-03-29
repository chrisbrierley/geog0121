# Run published geog0121 image:
docker run -i --rm --volume=${PWD}/practicals:/home/docker/geog0121 -w /home/docker/geog0121 -p 8888:8888 -t woodwardsh/geog0121:latest

# To create image from scratch using Dockerfile & then run:
# docker build -t geog0121 . && docker run -i --rm --volume=${PWD}/practicals:/home/docker/geog0121 -w /home/docker/geog0121 -p 8888:8888 -t geog0121

# -i = interactive
# -t = allow pseudo tty
# -p 8888:8888 = publish container ports to host
# --rm = remove container on exit
# -w PATH = working directory inside the container
