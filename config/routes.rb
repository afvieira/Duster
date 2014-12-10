Rails.application.routes.draw do
  resources :answer_types

  resources :answers

  resources :additional_informations

  resources :states

  resources :histories

  resources :rankings

  resources :services

  resources :feedbacks

  resources :payment_types

  resources :premia

  resources :service_provider_premia

  resources :days

  resources :slots

  resources :schedules

  resources :service_types

  resources :service_type_service_providers

  resources :service_providers

  resources :addresses

  resources :users

  resources :utilizadors

    scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
      devise_for :users
      resources :guestbooks
      root to: 'pages#home'
    end
    get '*path', to: redirect("/#{I18n.default_locale}/%{path}")
    get '', to: redirect("/#{I18n.default_locale}")
end
 

  #get 'pages/home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

