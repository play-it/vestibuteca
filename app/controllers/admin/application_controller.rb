module Admin
  class ApplicationController < ::ApplicationController
    before_action :require_login

    def not_authenticated
      redirect_to admin_oauth_path
    end
  end
end
