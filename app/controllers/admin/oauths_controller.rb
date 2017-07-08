module Admin
  class OauthsController < Admin::ApplicationController
    skip_before_action :require_login

    def create
      login_at external_provider
    end

    def callback
      user = login_from(external_provider) || create_from(external_provider)
      auto_login(user)
      redirect_to admin_root_path
    end

    private

    def external_provider
      @external_provider ||= params[:provider]
    end
  end
end
