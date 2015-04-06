Rails.application.routes.draw do
  root "home#home"
  get "home/home1", to: "home#home1"
  patch 'movie/update/:id', to: 'movie#update'
  delete 'movie/delete/:id', to: 'movie#delete'
  get 'movie/list/', to: 'movie#list'
  get 'movie/new', to: 'movie#new'
  get 'movie/edit/:id', to: 'movie#edit'
  get 'movie/read/:id', to: 'movie#read'
  get 'collection/new', to: 'collection#new'
  get 'collection/list/', to: 'collection#list'
  get 'collection/edit/:id', to: 'collection#edit'
  post 'collection/update', to: 'collection#update'
  post 'collection/add_to_collection', to: 'collection#add_to_collection'
  delete 'collection/remove_movie', to: 'collection#remove_movie'
  get 'collection/read/:id', to: 'collection#read'
  post ':controller(/:action(/:id(.:format)))'
  
  
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
