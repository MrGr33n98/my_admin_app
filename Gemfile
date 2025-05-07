source "https://rubygems.org"

ruby "3.2.2"

# ---------------------------------------
# Rails e principais dependências
# ---------------------------------------
gem "rails", "~> 7.1.2"
gem "puma", ">= 5.0"
gem "pg", "~> 1.1"
gem "sprockets-rails"

# ---------------------------------------
# Frontend & Hotwire
# ---------------------------------------
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "sassc", "~> 2.4"

# ---------------------------------------
# API & JSON
# ---------------------------------------
gem "jbuilder"

# ---------------------------------------
# Autenticação
# ---------------------------------------
gem "devise"

# ---------------------------------------
# Middleware (CORS)
# ---------------------------------------
gem "rack-cors"

# ---------------------------------------
# Admin interface
# ---------------------------------------
gem "activeadmin", "~> 3.2.0"

# ---------------------------------------
# Performance
# ---------------------------------------
gem "bootsnap", require: false

# ---------------------------------------
# Compatibilidade com Windows
# ---------------------------------------
gem "tzinfo-data", platforms: %i[windows jruby]

# ---------------------------------------
# Ambiente de desenvolvimento e testes
# ---------------------------------------
group :development, :test do
  gem "debug", platforms: %i[mri windows]
end

group :development do
  gem "web-console"
  gem "faker"
  # gem "rack-mini-profiler"  # Add performance monitoring
  # gem "spring"              # Speeds up development
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
