Rails.application.routes.draw do


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
