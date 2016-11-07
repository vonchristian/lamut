Rails.application.routes.draw do
  devise_for :users
  resources :taxpayers do
    resources :businesses, only: [:new, :create], module: :taxpayers
  end
  resources :fees
  resources :businesses, only: [:index, :show] do
    resources :business_activities, only: [:new, :create], module: :businesses
    resource :retirement, only: [:new, :create], module: :businesses
    resources :gross_sales, only: [:new, :create], module: :businesses

  end
  resources :settings, only: [:index]
  namespace :settings do
    resources :barangays, only: [:new, :create]
    resources :line_of_businesses, only: [:new, :create]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
