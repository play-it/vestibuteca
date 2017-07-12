Rails.application.routes.draw do
  namespace :admin do
    root to: "pages#index"

    resource :oauth, only: :show do
      post :callback
      get :callback
      get ":provider", to: "oauths#create", as: :login
    end
  end
end
