Rails.application.config.sorcery.submodules = [:external]

Rails.application.config.sorcery.configure do |config|
  config.external_providers = [:slack]
  config.slack.callback_url =
    "#{ENV["HOST"]}/admin/oauth/callback?provider=slack"
  config.slack.key = ENV["SLACK_ID"]
  config.slack.secret = ENV["SLACK_SECRET"]
  config.slack.user_info_mapping = { email: "email" }

  config.user_config do |user|
    user.authentications_class = Authentication
  end

  config.user_class = "User"
end
