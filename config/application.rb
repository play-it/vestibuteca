require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Vestibuteca
  class Application < Rails::Application
    config.time_zone = "Brasilia"

    config.middleware.use OmniAuth::Builder do
      configure { |c| c.path_prefix = "/admin" }

      provider :slack,
        ENV["SLACK_ID"],
        ENV["SLACK_SECRET"],
        name: "sessions",
        scope: "team:read,users:read,identify",
        team: ENV["SLACK_TEAM_ID"]
    end
  end
end
