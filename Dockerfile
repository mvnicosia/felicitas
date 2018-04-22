FROM ruby:2.5
LABEL maintainer="mvnicosia@gmail.com"

RUN apt-get update && apt-get install -y \
    nodejs \
    postgresql

ENV APP_NAME felicitas
WORKDIR /srv/$APP_NAME
ADD . $WORKDIR

RUN gem install bundler
RUN bundle install

EXPOSE 3000
ENTRYPOINT ["bin/run"]

# use the following command to work out issues with the container
# it will keep the container up
#CMD /bin/bash -c 'while :; echo "$APP_NAME is running"; do sleep 60; done'
