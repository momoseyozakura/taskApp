Rails.application.routes.draw do
  get '/' => "posts#index"
  get "home/top" => "home#top"
  get "posts/:id" => "posts#show"
  get "new" => "posts#new"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/create" => "posts#create"
  post "posts/:id/destroy" => "posts#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
