FROM ruby:2.5
LABEL maintainer="mvnicosia@gmail.com"

RUN apt-get update && apt-get install -y \
    nodejs

ENV APP_NAME felicitas
WORKDIR /srv/$APP_NAME
ADD . $WORKDIR

RUN gem install bundler
RUN bundle install

EXPOSE 3000
ENTRYPOINT ["bundle", "exec", "rails", "server"]
