source "https://rubygems.org"

ruby "2.4.0"

gem "rails"

gem "pg"
gem "puma"

gem "dotenv-rails", require: "dotenv/rails-now"
gem "foreman"

gem "dragonfly"
gem "simple_form"
gem "slim-rails"
gem "sorcery"
gem "therubyracer", platforms: :ruby
gem "uglifier"

group :development do
  gem "listen"
  gem "pry"
  gem "pry-byebug"
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
