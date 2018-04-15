# README

This is a generic rails 5 project running on ruby 2.5. It has a Dockerfile so that starting the server is easy.

## Requirements

* Docker
* RVM (`rvm install 2.5.1`)

## Build and Run in Development

1. `git clone git@github.com:mvnicosia/felicitas.git`
1. `cd felicitas`
1. `export FELICITAS=$(pwd)`
1. `export RAILS_ENV=development`
1. `gem install bundler`
1. `bundle install`
1. `docker-sync start`
1. `docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d --build`
1. GET `localhost:3000`
