FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /newapp_2
WORKDIR /newapp_2
ADD Gemfile /newapp_2/Gemfile
ADD Gemfile.lock /newapp_2/Gemfile.lock
RUN bundle install
ADD . /newapp_2