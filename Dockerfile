# This Dockerfile is basically designed to provide a test harness within which
# export-trips-to-xml can be roughly tested. It's not production-ready.

FROM ubuntu:18.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    bundler \
    git \
    ruby \
    ruby-dev \
    rubygems \
    zlib1g-dev

ADD Gemfile .
RUN bundle install

ADD creds.yml .
ADD permcreds.yml .
ADD export-trips-to-xml .
CMD bundle exec ./export-trips-to-xml
