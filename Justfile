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