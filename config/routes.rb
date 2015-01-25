Rails.application.routes.draw do
  get 'users/home', to:"users#home"
  post '/ajax/new_block', to: "service_providers/schedules#ajax_new_block"
  post '/ajax/block_resize', to: "service_providers/schedules#ajax_block_resize"
  post '/ajax/schedule', to: "service_providers/schedules#ajax_schedules"
  post '/ajax/service_provider_stats', to:"service_providers/jobs#ajax_stats"

  get 'service_providers/schedules/:id' => 'service_providers/schedules#show'
  get 'service_providers/jobs' => 'service_providers/jobs#show'
  get 'service_providers/accept_job' => 'service_providers/jobs#accept_job'
  get 'service_providers/reject_job' => 'service_providers/jobs#reject_job'


  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'welcome#index'
    devise_for :users, :controllers => {:registrations => "registrations"}
    devise_scope :user do
      get "users/new_user" => 'registrations#new_user'
      get "users/new_client" => 'registrations#new_client'
      post "users/create_client" => "registrations#create_client"
      post "users/create_user" => "registrations#create_user"

      get "services/request_service" => 'services#request_service'
      get "services/request_result" => "services#request_result"
      post "services/request_service" => "service#request_result"
      post "services/request_result" => "registrations#request_submit"
    end
    resources :guestbooks, :answer_types, :answers, :additional_informations, :states, :histories, :rankings, :services, :feedbacks, :payment_types, :premia, :service_provider_premia, :days, :slots, :schedules, :service_types, :service_type_service_providers, :service_providers, :addresses
    get '*path', to: redirect { |params, request| "/#{params[:locale]}" }
  end
  get '/*locale*/*path/assets', to: redirect("")
  get '/*locale/*path', to: redirect("/#{I18n.default_locale}/%{path}")
  get '/*path', to: redirect("/#{I18n.default_locale}/%{path}"), constraints: lambda { |req| !req.path.starts_with? "/#{I18n.default_locale}/" }
  get '', to: redirect("/#{I18n.locale}")
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
