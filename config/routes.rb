Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions:      'users/sessions'
  }
  devise_scope :user do
    get 'access',        to: 'users/registrations#access'
    put 'access_update', to: 'users/registrations#access_update'
  end

  namespace :admin do
    get    'tablero' => 'home#index', as: 'dashboard'
    get    'pensions/:id/edit' => "pensions#edit", as: 'pensionedit'
    patch  'pensions/:id/update' => "pensions#update", as: 'pensionupdate'
    delete "pensions/:id" => "pensions#destroy", as: 'pensiondelete'
    get    'pensions/:id/show' => "pensions#show", as: 'pensionashow'
    get    'pensions/show'
    get    'pensions/index'
    get    'trainer_details/new'
    get    'trainer_details/edit'
    get    'trainer_details/show'
    get    'trainer_details/index'
    get    'pensions/new'
    get    'pensions/show'
    get    'pensions/index'
    patch  "inactivar_historia/:id" => "histories#inactivar_historia", :as => :inactivar_historia
    patch  "publicar_historia/:id"  => "histories#publicar_historia",  :as => :publicar_historia
    patch  "rechazar_historia/:id"  => "histories#rechazar_historia",  :as => :rechazar_historia
    get    'trainer_details/new'
    get    'trainer_details/edit'
    get    'trainer_details/show'
    get    'trainer_details/index'
    get    'trainer_details/:id/show' => "trainer_details#show", as: 'trainerashow'
    get    'trainer_details/:id/edit' => "trainer_details#edit", as: 'traineredit'
    patch  'trainer_details/:id/update' => "trainer_details#update", as: 'trainerupdate'
    delete "trainer_details/:id" => "trainer_details#destroy", as: 'trainerdeletes'
    get    'donations/new'
    get    'donations/edit'
    get    'donations/show'
    get    'donations/index', as: 'donations'
    delete "donations/:id" => "donations#destroy", as: 'donationdeletes'
    get    'donations/:id/show' => "donations#show", as: 'donationsashow'
    patch  'donations/:id/update' => "donations#update", as: 'donationupdate'
    get    'donations/:id/edit' => "donations#edit", as: 'donationedit'
    post   'donations/index', to: 'admin/donations#create'
    get    'products/new'
    get    'products/edit'
    get    'products/show'
    get    'products/index', as: 'products'
    delete "products/:id" => "products#destroy", as: 'productsdeletes'
    get    'products/:id/show' => "products#show", as: 'productshow'
    patch  'products/:id/update' => "products#update", as: 'productsupdate'
    get    'products/:id/edit' => "products#edit", as: 'productsedit'
    post   'products/index', to: 'admin/products#create'
    get    'pets/new'
    get    'pets/edit'
    get    'pets/show'
    get    'pets/index', as: 'pets'
    delete "pets/:id" => "pets#destroy", as: 'petsdeletes'
    get    'pets/:id/show' => "pets#show", as: 'petshow'
    patch  'pets/:id/update' => "pets#update", as: 'petsupdate'
    get    'pets/:id/edit' => "pets#edit", as: 'petsedit'
    post   'pets/index', to: 'admin/pets#create'

    resources :users
    resources :ads
    resources :histories
    resources :news
    resources :races
    resources :reflections
    resources :categories
    resources :happy_pets, only: [:index, :show]
    resources :pensions, only: [:index]
    resources :trainer_details, only: [:index]
    resources :happy_pets, only: [:index, :show]
    resources :donations
    resources :products
    resources :pets
    resources :request_notifications, only: [:index, :show, :update]
    resources :roles, only: [:index, :show, :update]
    resources :complaints, only: [:index, :show, :update]
    resources :temporal_homes
  end

  get    'ask/gatos'
  get    'ask/perros'
  get    'pensions/show'
  get    'pensions/index'
  get    'pensions/edit'
  get    'pensions/new'
  get    'pensions/detailpension'
  get    'pensions/actionpension'
  get    'pensions/:id/edit' => "pensions#edit", as: 'pensionedits'
  patch  'pensions/:id/update' => "pensions#update", as: 'pensionupdates'
  delete 'pensions/:id' => "pensions#destroy", as: 'pensiondeletes'
  patch  'adoptions/:id/update' => "adoptions#update", as: 'adoptionupdates'
  get    '/listadotips' => "tips#listadotips"
  get    '/prevencion' => "tipes#prevencion"
  get    'pensions/:id/show' => "pensions#show", as: 'pensionshow'
  get    'trainer_details/:id/show' => "trainer_details#show", as: 'trainershow'
  patch  'pensions/:id/update' => "pensions#update", as: 'pensionupdate'
  get    'pensions/:id/actionpension' => "pensions#actionpension", as: 'pensionaction'
  delete 'pensions/:id/actionpension' => "pensions#actionpension", as: 'pensiondelete'
  patch  'pensions/:id/destroy' => "pensions#destroy", as: 'pensiondestroy'
  get    '/listadotips_cuidado' => "tips#listadotips_cuidado"
  get    '/listadotips_adiestramiento' => "tips#listadotips_adiestramiento"
  get    '/listadotips_cuidado_cachorros' => "tips#listadotips_cuidado_cachorros"
  get    '/tipscompleto' => "tips#tipscompleto"
  get    '/salud' => "tipes#salud"
  get    '/alimentacion' => "tipes#alimentacion"
  get    'trainer_details/actiontrainer'
  get    'trainer_details/index'
  get    'trainer_details/:id/edit' => "trainer_details#edit", as: 'traineruedit'
  patch  'trainer_details/:id/update' => "trainer_details#update", as: 'traineruupdate'
  delete 'trainer_details/:id' => "trainer_details#destroy", as: 'trainerudeletes'
  get    'trainer_details/:id/show' => "trainer_details#show", as: 'trainerushow'
  get    'follow_ups/index'
  get    'follow_ups/show'
  get    'follow_ups/new'
  get    'follow_ups/edit'
  get    'follow_ups/:id/show' => "follow_ups#show", as: 'followupshow'
  get    'follow_ups/:id/corre' => "follow_ups#corre"
  get    'follow_ups/corre'
  patch  'follow_ups/:id/corre' => "follow_ups#corre"
  delete 'follow_ups/index' => "follow_ups#corre", as: 'correr'
  get    'follow_ups/:id/update' => "follow_ups#update", as: 'followupdate'
  get    'donations/index'
  get    'donations/show'
  get    'donations/new'
  get    'donations/:id/show' => "donations#show", as: 'donationpshow'
  patch  'walkers/:id/update' => "walkers#update", as: 'walkerupdate'
  delete  'walkers/:id' => "walkers#destroy", as: 'walkerdelete'
  get    'temporal_homes/addcommet' => "temporal_homes#addcommet"
  
  
  resource  :profile, path: 'perfil', only: [:show]
  resource  :privacy, except: [:show, :destroy]
  resources :images
  resources :phones
  resources :requests
  resources :happy_pets, only: [:index, :show]
  resources :tips
  resources :tipes
  resources :tip_types
  resources :institutions
  resources :races, only: [:index, :show]
  resources :news
  resources :walkers
  resources :adoptions
  resources :histories
  resources :pets
  resources :ask
  resources :pensions, only: [:index]
  resources :reflections, only: [:index]
  resources :trainer_details, only: [:index]
  resources :pensions
  resources :journals
  resources :categories
  resources :subscriptions
  resources :trainer_details
  resources :ask, :except => [:index]
  resources :subscribers
  resources :sub_cat
  resources :follow_ups
  resources :follow_ups, only: [:update]
  resources :donations
  resources :products
  resources :subscribers
  resources :sub_cat
  resources :temporal_homes, only: [:index, :new, :create]
  resources :feedbacks
  resources :complaints, only: [:new, :create]
  resources :addresses do
    post 'cities', on: :collection
  end

  namespace :users do
    get 'news/index'
    get 'news/show'
    resources :news
  end

  resources :user do
    resources :ask
  end

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      namespace :admin do
        resources :users
      end

      devise_scope :user do
        post '/sign_in', to: 'users/sessions#create'
        post '/sign_up', to: 'users/registrations#create'
        post '/password', to: 'users/passwords#create'
        delete 'sign_out', to: 'sessions#destroy'
      end

      resources :journals
      resources :ask
      resources :races
      resources :race_personalities
      resources :race_details
      resources :races_dogs
      resources :races_cats
      resources :pets_new
      resources :videos
      resources :photos
      resources :institutions
      resources :news
      resources :pets
      resources :pensions
      resources :walkers
      resources :tipes
      resources :temporal_homes
      resources :cities
      resources :states
      resources :temporal_home_alternatives do 
        collection do
          get 'by_user/:id' => 'temporal_home_alternatives#by_user'
          get 'by_email/:email',
            to: 'temporal_home_alternatives#by_email',
            as: 'email',
            format: false,
            defaults: { format: 'html' },
            constraints: { email: %r{[^\/]+} }

          get 'all' => 'temporal_home_alternatives#all'
        end
      end
      resources :particular_donation_requests
      resources :journal_reminder do
        collection do
          get 'reminder'
        end
      end
    end
  end
end
