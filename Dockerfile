FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /api_server

WORKDIR /api_server

COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

RUN gem install bundler && bundle install

COPY . /api_server
