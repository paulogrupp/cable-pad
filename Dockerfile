# syntax=docker/dockerfile:1
FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /cable-pad
COPY Gemfile /cable-pad/Gemfile
COPY Gemfile.lock /cable-pad/Gemfile.lock
RUN bundle install

EXPOSE 3000
