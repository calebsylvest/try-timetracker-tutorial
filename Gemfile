source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'devise', '~> 4.4'

group :development, :test do
  gem 'byebug'
  gem "pry-rails"
  gem "annotate"
  gem 'factory_bot_rails'
  gem 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  gem "simplecov", "~> 0.11", require: false
  gem 'rspec-rails'
  gem 'guard'
  gem 'guard-livereload'
  gem 'guard-rspec'
  gem 'capybara'
  gem 'database_cleaner'
end

group :development do
  # gem 'web-console', '>= 3.3.0'
  # gem 'listen', '~> 3.0.5'
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sextant', '~> 0.2.4' # check rake routes in browser at localhost:3000/rails/routes
  gem 'letter_opener', '~> 1.4', '>= 1.4.1'
end
