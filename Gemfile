source 'https://rubygems.org'


gem 'rails', '4.1.8'
gem 'pg'
#gem 'bower-rails'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
gem 'sass'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'spring',        group: :development

gem "foreman"

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'bower-rails'
  gem 'selenium-webdriver'
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
  gem "rails_serve_static_assets"
end
