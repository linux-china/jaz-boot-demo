# build project
build:
   mvn -DskipTests clean package

# Docker image build with docker compose
image-build: build
   docker compose build

# container start
container-start: image-build
   docker compose up -d

# Enter container with bash
shell:
   docker compose exec -it jaz-boot bash

# jaz container
jaz-container:
   docker run -it "mcr.microsoft.com/openjdk/jdk:25-ubuntu" bash