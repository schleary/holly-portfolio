Rails.application.routes.draw do


  get     '/',                   to: 'home#index',      as: :root

  get     '/holly',              to: 'holly#index',     as: :hollys

  get     '/resume',            to: 'resumes#show',    as: :resumes

  # blog routes
  get     '/blog',              to: 'blogs#index',     as: :blogs
  get     '/blog/new',          to: 'blogs#new',       as: :blogs_new
  post    '/blog',              to: 'blogs#create',    as: :blogs_create
  get     '/blog/:id',          to: 'blogs#show',      as: :blogs_show
  get     '/blog/:id/edit',     to: 'blogs#edit',      as: :blogs_edit
  patch   '/blog/:id',          to: 'blogs#update',    as: :blogs_update
  get     '/blog/:id/delete',   to: 'blogs#destroy',   as: :blogs_delete
  delete  '/blog/:id',          to: 'blogs#destroy',   as: :blogs_destroy

  # projects routes
  get     '/projects',              to: 'projects#index',     as: :projects
  get     '/projects/new',          to: 'projects#new',       as: :projects_new
  post    '/projects',              to: 'projects#create',    as: :projects_create
  get     '/projects/:id',          to: 'projects#show',      as: :projects_show
  get     '/projects/:id/edit',     to: 'projects#edit',      as: :projects_edit
  patch   '/projects/:id',          to: 'projects#update',    as: :projects_update
  get     '/projects/:id/delete',   to: 'projects#destroy',   as: :projects_delete
  delete  '/projects/:id',          to: 'projects#destroy',   as: :projects_destroy



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
