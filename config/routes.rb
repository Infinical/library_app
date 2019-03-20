Rails.application.routes.draw do
  get 'books/create'
  root 'welcome#index'
  root controller: :books, action: :create
end
