Rails.application.routes.draw do

  devise_for :users

  get 'customers', to: 'customers#index', as: 'customers'
  
  get 'customers/new', to: 'customers#new', as: 'new_customer'
  post 'customers', to: 'customers#create'
  
  get 'customers/:id/edit', to: 'customers#edit', as: 'edit_customer'
  
  patch '/customers/:id', to: 'customers#update'
  put '/customers/:id', to: 'customers#update'

  delete 'customers/:id', to: 'customers#destroy', as: 'customer'

  #get 'customers/:id/add', to: 'customers#ticket', as: 'add_ticket'

  #tickets
  #get 'tickets', to: 'tickets#index', as: 'tickets'

  resources :tickets
  
  post 'tickets/:id/create', to: 'tickets#create', as: 'create_ticket'
  #delete 'tickets/:id', to: 'tickets#destroy', as: 'destroy_ticket'
  resources :quotes
  #quotes
  post 'quotes/:id/create', to: 'quotes#create', as: 'create_quote'
  #get 'quotes', to: 'quotes#index', as: 'quotes'
   
  get 'quotes/:id/quotes', to: 'quotes#quotes', as: 'customer_quote'

  get 'quotes/:id/email', to: 'quotes#email', as: 'email_quote'
  #get 'quotes/:id/edit', to: 'quotes#edit', as: 'edit_quote'

  resources :products
  #get 'products/new', to: 'products#new', as: 'new_product'
  #post 'products', to: 'products#create'

  get 'approve_quotes/:id/edit', to: 'approve_quotes#edit', as: 'approve_quote'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
end
