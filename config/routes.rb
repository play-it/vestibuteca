Rails.application.routes.draw do
  namespace :admin do
    root to: "pages#index"

    resource :sessions, only: :destroy do
      get :callback, action: :create
    end
  end
end
