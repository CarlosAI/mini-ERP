class PedidosController < ApplicationController

	def index
		@pedidos = Pedido.all  
		#Creación de pdf
		@id = params[:id]
		if @id
			@pedido= Pedido.find(@id)
		end
		respond_to do |format|
			format.html
			format.pdf do
				pdf= PedidoPdf.new(@pedido) #Clase creada en app/pdfs/pedido_pdf.rb
				send_data pdf.render, filename: "pedido_#{@id}.pdf",
				type: "application/pdf",
				disposition: "inline"
			end
		end
		
	end


	def detalles
		pedido = params["pedido_id"]
		@detalle = Pedido.find(pedido)
	end
end

