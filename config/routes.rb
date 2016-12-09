Rails.application.routes.draw do
  resources :line_of_business_classifications
  get 'collections/autocomplete_collection_reference_number'
  resources :searches, only: [:index]

  root :to => "taxpayers#index", :constraints => lambda { |request| request.env['warden'].user.nil? }, as: :unauthenticated_root
  root :to => 'pnp_section#index', :constraints => lambda { |request| request.env['warden'].user.role == 'police_officer' if request.env['warden'].user }, as: :pnp_section_root

root :to => 'dashboards#bplo', :constraints => lambda { |request| request.env['warden'].user.role == 'bplo_officer' if request.env['warden'].user }, as: :bplo_root
root :to => 'dashboards#collection_clerk', :constraints => lambda { |request| request.env['warden'].user.role == 'collection_clerk' if request.env['warden'].user }, as: :collection_clerk_root
root :to => 'accounting/accounts#index', :constraints => lambda { |request| request.env['warden'].user.role == 'bookkeeper' if request.env['warden'].user }, as: :bookkeeper_root
root :to => 'health_unit#index', :constraints => lambda { |request| request.env['warden'].user.role == 'health_officer' if request.env['warden'].user }, as: :health_unit_root

  resources :addresses, only: [:edit, :update]
  resources :business_activities, only: [:destroy], module: :businesses

  resources :collections, only: [:index, :show, :new, :create]
  resources :mode_of_payments, only: [:new, :create]
  devise_for :users, controllers: { sessions: 'users/sessions' , registrations: "settings/employees"}
  resources :taxpayers do
    resources :businesses, only: [:new, :create], module: :taxpayers
    resource :tin, only: [:new, :create], module: :taxpayers
  end
  resources :fees
  resources :businesses, only: [:index, :show, :edit, :update] do
    resources :assessments, only: [:new, :create], module: :businesses
    resources :business_activities, only: [:new, :create], module: :businesses
    resource :retirement, only: [:new, :create], module: :businesses
    resources :gross_sales, only: [:new, :create], module: :businesses
    resources :business_classifications, only: [:edit, :update], module: :businesses
    resources :additional_requirements, only: [:new, :create], module: :businesses
  end
  namespace :settings do
    resources :accounts, only: [:index]
    resources :municipalities, only: [:edit, :update] do
      resources :mayors, only: [:new, :create]
    end

    resources :barangays, only: [:new, :create]
    resources :line_of_businesses, only: [:new, :create, :index, :edit, :update]
    resources :line_of_business_classifications, only: [:new, :create]
    resources :business_classifications, only: [:new, :create, :edit, :update]
    resources :employees, only: [:new, :create, :show, :index]
    resources :fees, only: [:new, :create, :index]
    resources :mode_of_payments, only: [:new, :create, :edit, :update]
    resources :required_documents, only: [:new, :create, :edit, :update, :index]
    resources :departments, only: [:new, :create, :index]

  end

resources :accounting, only:[:index]
namespace :accounting do
  resources :accounts, only: [:index, :new, :create]
  resources :entries, only: [:index, :new, :create, :show] do
      match "/scope_to_date" => "entries#scope_to_date", as: :scope_to_date, via: [:get], on: :collection
    end
end
namespace :health_unit_section do
  resources :taxpayers, only: [:index, :show, :new, :create] do
    resources :health_certificates, only: [:new, :create]
    resources :sanitary_permits, only: [:new, :create]

  end
  resources :health_certificates, only: [:index]
  resources :sanitary_permits, only: [:index]
end

namespace :engineering_section do
  resources :taxpayers, only: [:index, :show, :new, :create] do
    resources :engineering_clearances, only: [:new, :create]
  end
  resources :engineering_clearances, only: [:index]
end
namespace :pnp_section do
  resources :police_clearances
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
