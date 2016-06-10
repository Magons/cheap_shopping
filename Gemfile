source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'pg'

# Assets & HTML
gem 'sass-rails', '~> 5.0'
gem 'haml-rails'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'bootstrap-wysihtml5-rails'

# Form builder
gem 'simple_form'

# Authorizatization & authentication
# gem 'devise'
# gem 'pundit'

# Background processing
gem 'sidekiq'
gem 'whenever'
gem 'sinatra', require: false # for 'sidekiq/web'

group :development, :test do
  gem 'byebug'
  gem 'spring'
end

group :development do
  gem 'pry-rails'
  gem 'pry-nav', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'web-console', '~> 2.0'
end

group :test do
  gem 'webmock'
  gem 'mocha'
  gem 'minitest-reporters'
  gem 'minitest-stub-const'
  gem 'minitest-rails-capybara'
end
