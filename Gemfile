source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'railties', '~> 6.1', '>= 6.1.4.1'
gem 'autoprefixer-rails', '~> 10.3', '>= 10.3.3.0'
gem 'activemodel', '~> 6.1', '>= 6.1.4.1'

# Use Puma as the app server

gem 'puma', '~> 5.0'

gem 'devise'
gem 'pg', '>= 0.18', '< 2.0'
gem 'trestle', '~> 0.8.12'   #es para el ADMIN DASHBOARD
gem 'trestle-auth', '~> 0.2.5'
gem 'trestle-search', '~> 0.3.0'
gem 'trestle-tinymce', '~> 0.1.3'
gem 'trestle-active_storage'
  

gem 'jquery-rails'
gem "bulma-rails", "~> 0.9.1"
gem 'noty-rails'
gem 'omniauth'
gem "omniauth-rails_csrf_protection"
gem 'omniauth-facebook', '=5.0.0'
gem 'kaminari' 
gem 'time_ago_in_words_es'
gem 'redis', '~> 3.3'
gem 'rails_12factor'


gem "aws-sdk-s3", require: false
gem 'mini_magick', '~> 4.8'


gem 'faker', '=1.9.3'
gem 'bulma-extensions-rails', '~> 6.2', '>= 6.2.7'

gem 'bulmajs-rails'


# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'

  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
