module Admin
  class SessionsController < ApplicationController
    skip_before_action :authenticate, only: :create

    def create
      binding.pry
      session[:admin_email] = auth.info.email
      session[:admin_name] = auth.info.name

      redirect_to admin_root_path
    end

    def destroy
      session.delete(:admin_email)
      session.delete(:admin_name)

      redirect_to root_path
    end

    private

    def auth
      @auth ||= request.env["omniauth.auth"]
    end
  end
end
