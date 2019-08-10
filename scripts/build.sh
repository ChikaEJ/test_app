#!/bin/bash

set -e

cd web-app

bundle install
bundle exec rake db:migrate RAILS_ENV=test
bundle exec cucumber --color