# Gemfile

source "https://rubygems.org"

ruby "3.2.2"

# Core framework
gem "rails", "~> 7.1.2"

# Asset pipeline
gem "sprockets-rails"

# Database
gem "pg", "~> 1.1"

# Web server
gem "puma", ">= 5.0"

# JavaScript
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# JSON APIs
gem "jbuilder"

# Authentication
gem "devise"

# ActiveAdmin
gem "activeadmin", "~> 3.2.0"

# Friendly URLs / slugs
gem "friendly_id", "~> 5.4"

# Stylesheets
gem "sassc", "~> 2.4"

# Time zone data for Windows
gem "tzinfo-data", platforms: %i[windows jruby]

# Performance
gem "bootsnap", require: false

# Uncomment to enable image processing
# gem "image_processing", "~> 1.2"

group :development, :test do
  # Debugging
  gem "debug", platforms: %i[mri windows]
end

group :development do
  # Console on exception pages
  gem "web-console"

  # Fake data generator
  gem "faker"

  # Uncomment to profile performance
  # gem "rack-mini-profiler"

  # Uncomment to speed up commands
  # gem "spring"
end

group :test do
  # System testing
  gem "capybara"
  gem "selenium-webdriver"
end
