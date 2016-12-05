Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  devise_for :users
  devise_scope :user do
    get 'signin' => 'devise/sessions#new'
    delete 'signout' => 'devise/sessions#destroy'
    get 'signup' => 'devise/registrations#new'
  end
  
  ActiveAdmin.routes(self)
  
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact-us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
