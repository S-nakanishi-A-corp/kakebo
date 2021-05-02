Rails.application.routes.draw do
  get '/books/index' => "books#index"
  post "/books/create" => "books#create"
  get "/books/new" => "books#new", as: "new_book"
  get "/books/:id" => "books#show", as: "book"
  root "home#top"
  
end
