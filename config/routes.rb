require 'api_constraints'

Wizmenu::Application.routes.draw do
  devise_for :users, skip: [:sessions, :registrations, :passwords]
  
  namespace :api, defaults: { format: 'json' } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: :true) do
      devise_scope :user do
        match '/sessions' => 'sessions#create', :via => :post
        match '/sessions' => 'sessions#destroy', :via => :delete
      end

    end
  end
end
