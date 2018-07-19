source 'http://rubygems.org'
ruby "2.4.1"

gem 'listen'
gem 'rails-controller-testing'

gem 'pg'
#gem 'pg', '~> 0.21'
#gem 'sqlite3'

gem 'mandrill'	

#gem 'devise', '4.4.3'
gem 'devise'

gem 'bootsnap', require: false

gem 'fog'   #, '1.6.0'
gem 'unf' 
gem 'carrierwave'
gem 'stripe'
gem 'pry'
gem 'aws-sdk-s3' #aws-s3'
gem 'aws-sdk'
#gem 'event-calendar', :require => 'event_calendar'

gem 'rails', '~> 5.2.0'
gem 'railties', '~> 5.2.0'
gem  'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
#gem 'sprockets'
gem "will_paginate", "~> 3.0.6" 
# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.1.2'
gem 'jquery-turbolinks'
gem 'bcrypt'
gem 'turbolinks'
gem 'geocoder'
gem 'friendly_id', '~> 5.0.5'
#gem "paperclip", "~> 2.0"
#gem 'rmagick'

group :test, :development do
#  gem 'factory_girl_rails'
#  gem 'capybara'
#  gem 'mocha', '~> 1.1.0'
end

group :production do
     #rake db:create:all
     #rails s -e production
     #gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'rails_12factor'
end

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Gems used only for assets and not required
# in production environments by default.
#group :assets do
gem 'sass-rails', '~> 5.0.7'
  gem 'coffee-rails', '~> 4.2.2'
  gem 'uglifier', '>= 1.3.0'
#end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end