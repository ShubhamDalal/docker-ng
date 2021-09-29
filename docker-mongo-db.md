# Docker-Mongo-Express

This will create and run the mongo, mongoDbExpress. For their communication one network is created.

## Build Docker Network for the communication between Mongo and Express

Run `docker network create mongo-net` for building docker img.

## Pull MongoDB and Run with provided env variables.

Run `docker run -d \
-p 27017:27017 \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=pass \
--name student-tracking-mongo \
--network mongo-net \
mongo` to run the docker-ng img.

## Pull MongoExpress and Run with provided env variables.

Run `docker run -d \
    --network mongo-net \
    --name student-tracking-mongo-express
    -p 8081:8081 \
    -e ME_CONFIG_OPTIONS_EDITORTHEME="ambiance" \
    -e ME_CONFIG_MONGODB_SERVER="student-tracking-mongo" \
    -e ME_CONFIG_BASICAUTH_USERNAME="admin" \
    -e ME_CONFIG_BASICAUTH_PASSWORD="pass" \
    -e ME_CONFIG_MONGODB_PORT=27017
    mongo-express` to stop the container.

## Check whether `http://localhost:8081/` is working or not.
