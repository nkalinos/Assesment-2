Rails.application.routes.draw do

  root 'welcome#index'

  resources :companies

  resources :industries do
  resources :companies

end
end
