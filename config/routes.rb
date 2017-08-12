Rails.application.routes.draw do


	namespace :admin do
  		resources :projects
    get '', to: 'projects#index', as: 'home'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
