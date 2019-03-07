class TercerosController < ApplicationController
  before_action :set_tercero, only: [:show, :edit, :update, :destroy]


  #Metodo de ordenes
  def ordenes
    puts "Metodo ordenes"
    puts params
    el_id = params["format"]
    puts "EL ID ES"
    puts el_id
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
