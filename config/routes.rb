Rails.application.routes.draw do
  get 'welcome/homepage'
  get 'about' => 'welcome#about', as: 'about'
  get 'contact' => 'welcome#contact', as: 'contact'
  get 'products' => 'welcome#products', as: 'products'
  get 'portfolio' => 'welcome#portfolio', as: 'portfolio'
  get 'homepage' => 'welcome#homepage', as: 'homepage'

  root 'welcome#homepage'

  match '/contacts',     to: 'welcome#contact',             via: 'get'
resources "contacts", only: [:new, :create]
match '/contacts',     to: 'contacts#new',             via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
