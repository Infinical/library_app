Rails.application.routes.draw do
  get 'books/create'
  root 'welcome#index'
  post 'books/create'
  root controller: :books, action: :create
end
