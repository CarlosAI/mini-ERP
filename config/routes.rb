Rails.application.routes.draw do

  get 'pedidos', to: 'pedidos#index'
  resources :almacens
  resources :servicios

  resources :productos
  resources :contactos
  resources :terceros do
    collection {get :ordenes}
  end

  get 'ordenes', to:'terceros#ordenes'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get 'Servicios' to:'servicio#index'
  #get 'Almacenes' to:'almacen#index'

end
