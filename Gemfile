source "https://rubygems.org"

ruby "2.3.1"

gem "rails", "5.0.0.1"

gem "pg"
gem "puma"

gem "foreman"
gem "dotenv-rails", require: "dotenv/rails-now"

gem "uglifier"
gem "slim-rails"
gem "therubyracer", platforms: :ruby

group :development do
  gem "listen"
end

group :development, :test do
  gem "rubocop", require: false
  gem "shoulda-matchers"
end

group :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "simplecov"
end
