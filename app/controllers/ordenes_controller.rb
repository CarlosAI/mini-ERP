class PedidosController < ApplicationController #OrdenesController?
  def index

  	@pedidos = Pedidos.all
  
  end
end
