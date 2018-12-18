Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :atendimento_chamado_statuses
  resources :anexo_chamados
  resources :chamados
  resources :modulos
  resources :tipo_chamados
  resources :prioridades
  resources :status_externos
  resources :status_internos
  resources :contatos
  resources :tipo_contatos
  resources :usuarios
  resources :clientes
  resources :tipo_usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
