Rails.application.routes.draw do
  resources :impressions
  resources :leads
  resources :reviews
  resources :company_categories
  resources :categories
  resources :services
  resources :company_images
  resources :companies
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # root "posts#index"
end
