WattV1::Application.routes.draw do

resources :events do
  resources :comments
end

resources :projects do
  resources :comments
end

#  resources :sessions,   only: [:new, :create, :destroy]
  resources :comments, only: [:create, :destroy]

  devise_for :users

  get "users/new"

  root to: 'static_pages#home'

  match '/signup',              to: 'users#new'

  match '/profile',             to: 'static_pages#profile'

  match '/participate',         to: 'static_pages#participate'

  match '/submit_project',      to: 'static_pages#submit_project'

  match '/research',            to: 'static_pages#research'

  match '/evaluate',            to: 'static_pages#evaluate'

  match '/design',              to: 'static_pages#design'

  match '/finalize',            to: 'static_pages#finalize'

  match '/browse_investments',  to: 'static_pages#browse_investments'

  match '/install',             to: 'static_pages#install'

  match '/earn',                to: 'static_pages#earn'

  match '/learn_more',          to: 'static_pages#learn_more'

  match '/how_watt_works',      to: 'static_pages#how_watt_works'

  match '/blog',                to: 'static_pages#blog'

  match '/about',               to: 'static_pages#about'

  match '/search',              to: 'static_pages#search'

  match '/signup',              to: 'static_pages#signup'

  match '/login',               to: 'static_pages#login'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
