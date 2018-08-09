# README

## Ruby version
  2.5.1

## Requirements
Docker and Docker Compose are required to run this project

## Generating environment

To build project image run:

`docker-compose build`

To run project, simply run:

`docker-compose up`

And when you're finished:

`docker-compose down`

## Testing
The following comand runs rspec inside a docker container:

`docker-compose run --entrypoint "/bin/sh -c" web rspec`

You can also swap rspec for any other command you would like to run.

## Deploy
### Pushing image to Heroku
Before deploying the application we need to build our image and send it to heroku registry. The following command builds and pushes the image:

`heroku container:push web --recursive --context-path .`
Since we keep dockerfile in a nested directory we need to use the recursive flag. When using the `recursive` flag we need to set the context with the `context-path` flag

### Release
After pushing the image we just need it to release it with:

`heroku container:release web`

### CI/CD
Codeship is the used plataform. The steps above are performed automatically when a push happens to master.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
