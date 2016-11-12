Rails.application.routes.draw do
  get 'collections/autocomplete_collection_reference_number'

  root :to => "taxpayers#index", :constraints => lambda { |request| request.env['warden'].user.nil? }, as: :unauthenticated_root
root :to => 'dashboards#bplo', :constraints => lambda { |request| request.env['warden'].user.role == 'bplo_officer' if request.env['warden'].user }, as: :bplo_root
root :to => 'dashboards#collection_clerk', :constraints => lambda { |request| request.env['warden'].user.role == 'collection_clerk' if request.env['warden'].user }, as: :collection_clerk_root
root :to => 'accounting/accounts#index', :constraints => lambda { |request| request.env['warden'].user.role == 'bookkeeper' if request.env['warden'].user }, as: :bookkeeper_root
  resources :collections, only: [:index, :show, :new, :create]
  resources :mode_of_payments, only: [:new, :create]
  devise_for :users, controllers: { sessions: 'users/sessions' , registrations: "settings/employees"}
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
    resources :employees, only: [:new, :create, :show]

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
