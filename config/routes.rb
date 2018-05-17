Rails.application.routes.draw do
  get 'people/index'
  get 'up_coming/index'
  get 'top_rated/index'
  get 'now_playing/index'
  get 'popular/index'
  root to: 'welcome#index'
  get "/signup",  to: "users#new"
  resources :users
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  resources :movie
  resources :search
  resources :rate
  resources :people
  resources :comment
  resources :remove_uri
  resources :change_role
  resources :remove_film
  resources :remove_celeb
  resources :add_celeb_process
  resources :edit_celeb_process
  resources :edit_film_process
  resources :add_film_process
  resources :wishlist

  get 'static_page/index'
  get 'welcome/index'
  get 'admin', to: 'admin#new'
  get 'admin/all_film', to: 'all_film#show'
  get 'admin/all_user', to: 'all_user#show'
  get 'admin/all_celebs', to: 'all_celebs#show'
  get 'admin/add/film', to: 'add_film#show'
  get 'admin/add/celeb', to: 'add_cebles#show'
  get 'admin/edit/film/:id', to: 'edit_film#show'
  get 'admin/edit/celeb/:id', to: 'edit_celeb#show'
  get 'static_page/discover', to: 'static_page#discover_movies'
  get 'static_page/now_playing', to: 'static_page#now_playing'
  get 'static_page/popular', to: 'static_page#popular'
  get 'static_page/top_rated', to: 'static_page#top_rated'
  get 'static_page/upcoming', to: 'static_page#upcoming'
  get 'static_page/login', to: 'static_page#login'
  get 'static_page/register', to: 'static_page#register'
  get 'static_page/people', to: 'static_page#people'
  get 'static_page/film_info', to: 'static_page#film_info'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
