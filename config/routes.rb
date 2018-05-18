Rails.application.routes.draw do
  resources :cocktails do
      resources :doses, only: [ :index, :new, :create ]
    end
  resources :doses, only: [ :show, :edit, :update, :destroy ]
end
