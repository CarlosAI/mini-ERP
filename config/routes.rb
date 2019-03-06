Rails.application.routes.draw do

  resources :almacens
  resources :servicios

  resources :productos
  resources :contactos
  resources :terceros

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get 'Servicios' to:'servicio#index'
  #get 'Almacenes' to:'almacen#index'

end
