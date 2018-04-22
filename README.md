# README

This is a generic rails 5 project running on ruby 2.5. It has a Dockerfile so that starting the server is easy.

## Requirements

* Docker
* Ruby 2.5.x :: RVM is recommended (`rvm install 2.5`)
* libpq-fe.h :: On the MacOS, Homebrew is recommended (`brew install postgresql`)

## Build and Run in Development

1. `git clone git@github.com:mvnicosia/felicitas.git`
1. `cd felicitas`
1. `gem install bundler`
1. `bundle install`
1. `./up`
1. GET `localhost:3000`
