Rails.application.routes.draw do
  resources :mode_of_payments
  devise_for :users
  resources :taxpayers do
    resources :businesses, only: [:new, :create], module: :taxpayers
    resource :tin, only: [:new, :create], module: :taxpayers
  end
  resources :fees
  resources :businesses, only: [:index, :show] do
    resources :assessments, only: [:new, :create], module: :businesses
    resources :business_activities, only: [:new, :create], module: :businesses
    resource :retirement, only: [:new, :create], module: :businesses
    resources :gross_sales, only: [:new, :create], module: :businesses

  end
  resources :settings, only: [:index]
  namespace :settings do
    resources :barangays, only: [:new, :create]
    resources :line_of_businesses, only: [:new, :create]
    resources :business_classifications, only: [:new, :create, :show]
  end

resources :accounting, only:[:index]
namespace :accounting do
  resources :accounts, only: [:index, :new, :create]
  resources :entries, only: [:index, :new, :create, :show] do
      match "/scope_to_date" => "entries#scope_to_date", as: :scope_to_date, via: [:get], on: :collection
    end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
