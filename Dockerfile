FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
COPY .ruby-version /app/.ruby-version
RUN bundle install
RUN rails db:create db:migrate db:seed
RUN rails RAILS_ENV=test db:create db:migrate
COPY . /app 

ENV RAILS_ENV=production
EXPOSE 6060
CMD ["rails", "server", "-b", "0.0.0.0"]