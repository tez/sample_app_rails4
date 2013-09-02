SampleAppRails4::Application.routes.draw do
  resources :users
  resources :sessions,    only: [:new, :create, :destroy]
  resources :microposts,  only: [:create, :destroy]
  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
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
#== Route Map
# Generated on 19 Aug 2013 20:50
#
#         users GET    /users(.:format)          users#index
#               POST   /users(.:format)          users#create
#      new_user GET    /users/new(.:format)      users#new
#     edit_user GET    /users/:id/edit(.:format) users#edit
#          user GET    /users/:id(.:format)      users#show
#               PATCH  /users/:id(.:format)      users#update
#               PUT    /users/:id(.:format)      users#update
#               DELETE /users/:id(.:format)      users#destroy
#      sessions POST   /sessions(.:format)       sessions#create
#   new_session GET    /sessions/new(.:format)   sessions#new
#       session DELETE /sessions/:id(.:format)   sessions#destroy
# new_micropost GET    /microposts/new(.:format) microposts#new
#     micropost DELETE /microposts/:id(.:format) microposts#destroy
#          root GET    /                         static_pages#home
#        signup GET    /signup(.:format)         users#new
#        signin GET    /signin(.:format)         sessions#new
#       signout DELETE /signout(.:format)        sessions#destroy
#          help GET    /help(.:format)           static_pages#help
#         about GET    /about(.:format)          static_pages#about
#       contact GET    /contact(.:format)        static_pages#contact
