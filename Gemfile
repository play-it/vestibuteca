source "https://rubygems.org"

ruby "2.4.0"

gem "rails"

gem "pg"
gem "puma"

gem "dotenv-rails", require: "dotenv/rails-now"
gem "foreman"

gem "dragonfly"
gem "slim-rails"
gem "therubyracer", platforms: :ruby
gem "uglifier"

group :development do
  gem "listen"
end

group :development, :test do
  gem "rubocop", require: false
  gem "shoulda-matchers"
end

group :test do
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "simplecov"
end
