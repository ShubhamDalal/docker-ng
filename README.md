# DockerNg

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 12.0.4.
For Serving HTML/CSS/JS files it utilises NGINX

## Build Docker Image

Run `docker build -t docker-ng .` for building docker img.

## Run Docker img

Run `docker run --rm -it  -p 8080:80 docker-ng` to run the docker-ng img.

## When you make changes to Angular App

Run `docker container stop 'SHA256 of IMG'` to stop the container. 
example `docker container stop asds123ad34ad`
Run `docker container rm 'SHA256 of IMG'` to stop the container. 
example `docker container rm asds123ad34ad`
