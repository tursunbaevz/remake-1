Rails.application.routes.draw do


  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admins                                       

	namespace :admin do
  		resources :projects
    get '', to: 'projects#index', as: 'home'
  end
  resources 'contacts', only: [:new, :create]
  root "home#index"
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
