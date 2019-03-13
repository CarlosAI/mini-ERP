Rails.application.routes.draw do

  resources :almacens
  resources :servicios

  resources :productos
  resources :contactos
  resources :terceros do
    collection {get :ordenes}
  end

  get 'ordenes', to:'terceros#ordenes'
  get 'ordenes_clientes', to:'terceros#ordenes_clientes'
  post 'registrar_nuevo', to:'terceros#registrar_nuevo'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get 'Servicios' to:'servicio#index'
  #get 'Almacenes' to:'almacen#index'

end
