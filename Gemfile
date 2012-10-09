source :rubygems

gem 'rails', '~> 3.2.3'

gem 'thin'
gem 'jquery-rails'
gem 'paperclip',  '~> 3.2.0'
gem 'haml-rails', '~> 0.3.4'
gem 'rdiscount'
gem 'simple_form'
gem 'bcrypt-ruby', '~> 3.0.1'
gem 'net-ssh', '~> 2.4.0'
gem 'capistrano'
gem 'unicorn'
gem 'cocaine', '0.3.2'
gem 'dalli'
gem 'foreman'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
  gem 'bootstrap-sass'
  gem 'compass-rails'
  gem 'oily_png'
end

group :test, :development do
  gem 'factory_girl_rails', '~> 3.3.0'
  gem 'cucumber-rails',     '~> 1.3.0', require: false
  gem 'database_cleaner'

  gem 'sqlite3'
  gem 'rspec-rails', '~> 2.10.1'

  gem 'guard-rails'
  gem 'guard-spork'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'guard-bundler'

  gem 'pry'
end

group :production do
  gem 'pg'
  gem 'aws-sdk'
  gem 'newrelic_rpm'
end
