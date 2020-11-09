source "http://rubygems.org"

gem "rake", "~> 12.0"

group :development do
  gem 'guard', require: false
  gem 'guard-rspec', require: false
end

group :development, :test do
  gem "addressable", "~> 2.7.0", :platforms => %i[jruby ruby_18]
  gem "coveralls"
  gem "json", :platforms => %i[jruby ruby_18 ruby_19]
  gem "mime-types", "~> 3.3", :platforms => %i[jruby ruby_18]
  gem "rack-test"
  gem "rest-client", "~> 2.1", :platforms => %i[jruby ruby_18]
  gem "rspec", "~> 3.10"
  gem "rubocop", "~> 1.2", :platforms => %i[ruby_19 ruby_20 ruby_21 ruby_22 ruby_23 ruby_24]
  gem "webmock", "~> 3.9"
  # To use debugger, add require 'byebug' at the top of the file you are debugging
  gem 'byebug'
end

# Specify your gem's dependencies in shape-api-ruby.gemspec
gemspec

ruby '2.6.6'
