class TercerosController < ApplicationController
  before_action :set_tercero, only: [:show, :edit, :update, :destroy]


  #Metodo de ordenes
  def ordenes
    id = params["format"]
    @ordenes_de_cliente = Pedido.where("id_tercero"=>id)
    tercero = Tercero.where("id_tercero"=>id)
    tercero.each do |i|
      @nombre_tercero = i.nombre_tercero
    end
  end

  def registrar_nuevo
    puts params
    pedido = Pedido.new
    pedido.id_tercero = params["Cliente"]
    pedido.tipo_pedido = "Pedido a cliente"
    pedido.fecha = params["Fecha-p"]
    pedido.fecha_entrega = params["fecha-e"]
    pedido.forma_pago = params["pago"]
    pedido.metodo_envio = params["metodo"]
    pedido.condicion_pago = params["condicion"]
    pedido.save
  end

  def ordenes_clientes
    @tercer = Tercero.all
  end

  # GET /terceros
  # GET /terceros.json
  def index
    @terceros = Tercero.all
  end

  # GET /terceros/1
  # GET /terceros/1.json
  def show
  end

  # GET /terceros/new
  def new
    @tercero = Tercero.new
  end

  # GET /terceros/1/edit
  def edit
    puts params
  end

  # POST /terceros
  # POST /terceros.json
  def create
    @tercero = Tercero.new(tercero_params)

    respond_to do |format|
      if @tercero.save
        format.html { redirect_to @tercero, notice: 'Tercero was successfully created.' }
        format.json { render :show, status: :created, location: @tercero }
      else
        format.html { render :new }
        format.json { render json: @tercero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terceros/1
  # PATCH/PUT /terceros/1.json
  def update
    respond_to do |format|
      if @tercero.update(tercero_params)
        format.html { redirect_to @tercero, notice: 'Tercero was successfully updated.' }
        format.json { render :show, status: :ok, location: @tercero }
      else
        format.html { render :edit }
        format.json { render json: @tercero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terceros/1
  # DELETE /terceros/1.json
  def destroy
    @tercero.destroy
    respond_to do |format|
      format.html { redirect_to terceros_url, notice: 'Tercero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tercero
      @tercero = Tercero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tercero_params
      params.require(:tercero).permit(:id_tercero, :nombre_tercero, :cliente, :proveedor, :direccion, :codigo_postal, :ciudad, :estado, :pais, :email, :sitio_web, :telefono, :rfc, :forma_juridica)
    end
end
