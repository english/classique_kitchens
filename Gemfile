source :rubygems

gem 'rails', '3.2.3'

gem 'jquery-rails'
gem 'paperclip',  '~> 3.0.3'
gem 'haml-rails', '~> 0.3.4'
gem 'rdiscount'
gem 'simple_form'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
  gem 'bootstrap-sass'
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
end

group :production do
  gem 'pg'
  gem 'aws-sdk'
end
