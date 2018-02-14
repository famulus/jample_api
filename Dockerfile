FROM ubuntu:latest
# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp


RUN  apt-get update  
RUN  apt-get -y  install git-all
RUN  apt-get -y  install aubio-tools
RUN  apt-get -y  install ruby-full
RUN  apt-get -y  install rubygems
RUN  apt-get -y install build-essential patch ruby-dev zlib1g-dev liblzma-dev
RUN  apt-get -y install libffi-dev
# RUN  apt-get -y install ruby-dev


ADD .git /myapp/.git
RUN  git pull origin master  

ADD Gemfile /myapp/Gemfile

RUN  gem install bundler
RUN  bundle update
RUN bundle install
COPY . /myapp
CMD bundle exec rails s -p $PORT -b '0.0.0.0'