source "https://rubygems.org"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "4.2.11.3"

# Use mysql as the database for Active Record
gem "mysql2", ">= 0.3.13", "< 0.6.0"

# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "turbolinks"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.0"

# bundle exec rake doc:rails generates the API under doc/api.
gem "sdoc", "~> 1.0.0", group: :doc

# rdoc >=6.4 introduces psych which breaks things
gem "rdoc", "~> 6.3.3", group: :doc

# rail 2.7.7 drops support for BigDecimal.new which Rails 4.2 still needs
gem "bigdecimal", "1.4.2"

# For debugging performance issues
gem "rack-mini-profiler"

# For memory profiling
gem "memory_profiler"

# For call-stack profiling flamegraphs
gem "stackprof"

# For benchmarking
gem "benchmark-ips"

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug"

  gem "rspec-rails", "~> 3.9.1"

  gem "standard", "~> 1.24.3"

  # Factorybot and faker gem for test data
  gem "factory_bot_rails"
  gem "faker"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem "web-console", "~> 2.0"

  gem "ruby-lsp", require: false

  gem "pronto", require: false, group: :pronto
  gem "pronto-brakeman", require: false, group: :pronto
  gem "pronto-flay", require: false, group: :pronto
  gem "pronto-reek", require: false, group: :pronto
  gem "pronto-standardrb", require: false, group: :pronto
end

group :test do
  gem "simplecov", require: false

  gem "shoulda-matchers", "~> 4.5.1"
end
