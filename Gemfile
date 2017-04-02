source "https://rubygems.org"
ruby "2.4.0"

gem "bundler"
gem "rake"
gem "hanami"
gem "hanami-model"

gem "pg"

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem "shotgun"
end

group :test, :development do
  gem "dotenv"
  gem "pry"
  gem "pry-byebug"
  gem "rubocop"
  gem "shoulda-matchers"
end

group :test do
  gem "rspec"
  gem "capybara"
  gem "simplecov"
end

group :production do
  # gem "puma"
end
