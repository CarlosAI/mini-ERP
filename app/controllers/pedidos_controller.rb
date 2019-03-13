class PedidosController < ApplicationController

	def index
	  	@pedidos = Pedido.all
	end

	def detalles
	end
end
