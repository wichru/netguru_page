Rails.application.routes.draw do
  root 'welcome#index'

  resources :citations
end
