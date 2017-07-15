module AdminConcern
  extend ActiveSupport::Concern

  included do
    helper_method :admin
  end

  def admin
    @admin ||= AdminUser.new admin_user_params
  end

  private

  def admin_user_params
    { name: session[:admin_name], email: session[:admin_email] }
  end
end
