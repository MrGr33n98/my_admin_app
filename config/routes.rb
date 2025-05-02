Rails.application.routes.draw do
  resources :product_accesses
  resources :sponsored_products
  resources :plans
  resources :lead_saas
  resources :members
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
