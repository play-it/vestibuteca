module Admin
  class ApplicationController < ::ApplicationController
    before_action :authenticate

    private

    def authenticate
      redirect_to admin_sessions_path if not_authenticated?
    end

    def not_authenticated?
      session[:admin_email].blank?
    end
  end
end
