FROM ruby

COPY . /home/app

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq
RUN bundle install

CMD [ "rails", "server", "-b", "0.0.0.0"]