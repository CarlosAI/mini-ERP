class PedidoPdf < Prawn::Document
  def initialize(pedido)
    super(top_margin: 70)
    @pedido = pedido
    pedido_number
    lista_pedido
  end

  def pedido_number
    text "Pedido \##{@pedido.id}", size: 30, style: :bold
  end

  def lista_pedido
    move_down 20
    table lista_pedido_rows
  end

  def lista_pedido_rows
    [["Tipo de pedido", "Fecha", "Validez", "Condición de pago", 
    "Forma de pago", "Método de envío", "Fecha de entrega", "Fecha de pedido creada",
    "Última actualización de pedido"]]+
    #@pedido.lista_pedido.map do |lista|
      [@pedido.tipo_pedido, @pedido.fecha, @pedido.validez, @pedido.condicion_pago,
      @pedido.forma_pago, @pedido.metodo_envio, @pedido.fecha_entrega, @pedido.created_at,
      @pedido.updated_at]
    end
end
