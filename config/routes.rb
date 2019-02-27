Rails.application.routes.draw do
  devise_for :users
  resources :statuses
  resources :atendimento_chamados
  resources :bases
  get 'home/index'
  root 'home#index'
  resources :chamados
  resources :modulos
  resources :tipo_chamados
  resources :prioridades
  resources :contatos
  resources :tipo_contatos
  resources :clientes
  resources :tipo_usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
