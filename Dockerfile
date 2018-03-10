FROM ubuntu:latest
# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs


RUN  apt-get update  
RUN  apt-get -y  install git-all
RUN  apt-get -y  install aubio-tools
RUN  apt-get -y  install ruby-full
RUN  apt-get -y  install rubygems
RUN  apt-get -y install build-essential patch ruby-dev zlib1g-dev liblzma-dev
RUN  apt-get -y install libffi-dev
RUN  env


RUN  git clone https://github.com/famulus/jample_api.git
# RUN mkdir /jample_api

COPY . /jample_api
WORKDIR /jample_api
# ADD Gemfile /jample_api/Gemfile
# RUN  chown -R $(whoami):$(whoami) /jample_api
RUN  chmod a+rwx -R /jample_api



RUN  gem install bundler
RUN  bundle update
RUN bundle install
CMD bundle exec rails s -p $PORT -b '0.0.0.0'