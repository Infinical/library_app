Rails.application.routes.draw do
  get 'books/show'
  resources :books
  root 'welcome#index'
end
