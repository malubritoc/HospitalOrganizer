Rails.application.routes.draw do
  resources :medicamentos
  resources :material_cirurgicos
  resources :pacientes
  resources :medicos
  resources :cirurgias
  resources :sala_cirurgias
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
