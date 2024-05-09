FROM ruby:2.7-alpine

WORKDIR /app/pom.xml

ADD Gemfile Gemfile.lock /app/
RUN bundle install -j 8
EXPOSE 3004
ADD . /app
