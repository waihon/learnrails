source 'https://rubygems.org'

# It's also wise to specify the Ruby version we're using. This is needed for
# automated deployemnt script such as those used by Heroku.
ruby '2.1.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'

# Rails defaults
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. 
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
#gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. 
# Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# learn-rails
# Helps to use Rails without a database
gem 'activerecord-tableless'
# Support for Zurb Foundation
# Could not find gem 'compass-rails (~> 2.0.alpha.0) ruby' in the gems available on this machine.
#gem 'compass-rails', '~> 2.0.alpha.0'
gem 'compass-rails'
# Configuration framework
gem 'figaro'
# Access to the MailChimp API
# Gibbon now targets MailChimp API 2.0, which is substantially different from API 1.3.
# Please use Gibbon 0.4.6 if you need to use API 1.3.
# If you're upgrading from <0.5.0 your code WILL break.
gem 'gibbon'
# Use Google Drive spreadsheets for data storage
gem 'google_drive'
# For static pages like "About"
gem 'high_voltage'
# Forms made easy
gem 'simple_form'
# Front-end framework
gem 'zurb-foundation'
group :development do
	# Helps when things go wrong
	gem 'better_errors'
	# Suppresses distracting messages in the log
	gem 'quiet_assets'
	# Generates files for an application layout
	gem 'rails_layout'
end
group :production do
	# Heroku doesn't support SQLite database; the company provides a PostgreSQL database.
	gem 'pg'
	# On Heroku, Rails 4.0 needs an extra gem to handle logging and serve CSS and 
	# JavaScript assets.
	gem 'rails_12factor'
	# Note that Heroku recommends Unicon for handling higher level of traffic efficiently.
	# Unicorn can be difficult to set up and configure, so we're using Thin for our tutorial
	# application.
	gem 'thin'
end