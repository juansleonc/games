FROM ruby:3.1

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

RUN bundle install

COPY . /myapp

RUN gem install rackup

EXPOSE 9292

CMD ["rackup", "--host", "0.0.0.0"]
