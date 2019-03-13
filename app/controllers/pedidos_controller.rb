class PedidosController < ApplicationController

	def index
	  	@pedidos = Pedido.all
	end

	def detalles
		pedido = params["pedido_id"]
		@detalle = Pedido.find(pedido)
	end
end
