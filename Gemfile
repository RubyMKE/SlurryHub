source 'https://rubygems.org'

gem 'rails', '3.2.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'
# Postgres as our Database
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  # gem 'sass-rails',   '~> 3.2.3' # Hidding for now while using bootstrap
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Haml for Views
gem 'haml'

# twitter bootstrap
gem "twitter-bootstrap-rails", "~> 2.0.4"

# Devise and Friends for Authentication
gem "devise", "~> 2.0.4"
gem "omniauth", "~> 1.0.3"


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# Load RSpec
group :test, :development do
	gem 'rspec-rails', '~> 2.9.0'
end

# Acceptance and Integration Testing
group :test do
	gem 'cucumber-rails', '~> 1.3.0'
	gem 'capybara'
	gem 'factory_girl'
  gem 'database_cleaner'
	gem 'email_spec'
end

# Travis CI needs rake
group :test do
  gem 'rake', '~> 0.9.2'
end
