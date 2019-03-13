class PedidoPdf < Prawn::Document
  def initialize(pedido)
    super(top_margin: 70)
    @pedido = pedido
    pedido_number
    lista_pedido
  end

  def pedido_number
    text "Pedido \##{@pedido.id}", style: :bold, size: 30
    # text "Tipo de pedido #{@pedido.tipo_pedido}", size: 12
    # text "Condición de pago #{@pedido.condicion_pago}", size: 12
    # text "Fecha de pedido #{@pedido.fecha}", size: 12
    # text "Forma de pago #{@pedido.forma_pago}", size: 12
    # text "Método de envío #{@pedido.metodo_envio}", size: 12
    # text "Fecha de entrega #{@pedido.fecha_entrega}", size: 12
    text "Fecha de ultima actualizacion de pedido #{@pedido.updated_at}", size: 12

  end

  def lista_pedido
    move_down 20
    table [["Tipo de pedido", "Condición de pago", "Fecha de pedido", "Forma de pago", "Método de envío","Fecha de entrega" ], 
    [@pedido.tipo_pedido,@pedido.condicion_pago, @pedido.fecha, @pedido.forma_pago, @pedido.metodo_envio, @pedido.fecha_entrega]]
  end

  def lista_pedido_rows
    # [["Tipo de pedido", "Fecha", "Validez", "Condición de pago", 
    # "Forma de pago", "Método de envío", "Fecha de entrega", "Fecha de pedido creada",
    # "Última actualización de pedido"]]+
    # @pedido.lista_pedido.map do |lista|
    #   [lista.tipo_pedido, lista.fecha, lista.validez, lista.condicion_pago,
    #   lista.forma_pago, lista.metodo_envio, lista.fecha_entrega, lista.created_at,
    #   lista.updated_at]
    # end
  end
end
