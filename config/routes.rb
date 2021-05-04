Rails.application.routes.draw do
  root "books#index", as: "books_index"
  post "/books/create" => "books#create"
  get "/books/new" => "books#new", as: "books_new"
  get "/books/:id/edit" => "books#edit", as: "books_edit"
  get "/books/:id" => "books#show", as: "book"
  patch "/books/:id" => "books#update"
  delete "/books/:id" => "books#destroy"
  
end
