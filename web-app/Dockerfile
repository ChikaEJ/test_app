FROM ruby:2.4.0
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && apt-get update && apt-get install -y libpq-dev build-essential tcl nodejs postgresql-client yarn && bundle install && rm -r /var/cache/apt/
COPY . ./
RUN rake assets:precompile
EXPOSE 3000
CMD ["/bin/bash", "-c", " puma -C config/puma.rb "]


