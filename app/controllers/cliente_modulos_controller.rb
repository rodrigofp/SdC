class ClienteModulosController < ApplicationController
  before_action :set_cliente_modulo, only: [:show, :edit, :update, :destroy]
  before_action :get_options, only: [:new, :edit, :update, :create]

  # GET /cliente_modulos
  # GET /cliente_modulos.json
  def index
    @cliente_modulos = ClienteModulo.paginate(:page => params[:page])
  end

  # GET /cliente_modulos/1
  # GET /cliente_modulos/1.json
  def show
  end

  # GET /cliente_modulos/new
  def new
    @cliente_modulo = ClienteModulo.new
  end

  # GET /cliente_modulos/1/edit
  def edit
  end

  # POST /cliente_modulos
  # POST /cliente_modulos.json
  def create
    @cliente_modulo = ClienteModulo.new(cliente_modulo_params)

    respond_to do |format|
      if @cliente_modulo.save
        format.html { redirect_to @cliente_modulo, notice: 'Cliente modulo was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_modulo }
      else
        format.html { render :new }
        format.json { render json: @cliente_modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_modulos/1
  # PATCH/PUT /cliente_modulos/1.json
  def update
    respond_to do |format|
      if @cliente_modulo.update(cliente_modulo_params)
        format.html { redirect_to @cliente_modulo, notice: 'Cliente modulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_modulo }
      else
        format.html { render :edit }
        format.json { render json: @cliente_modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_modulos/1
  # DELETE /cliente_modulos/1.json
  def destroy
    @cliente_modulo.destroy
    respond_to do |format|
      format.html { redirect_to cliente_modulos_url, notice: 'Cliente modulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_modulo
      @cliente_modulo = ClienteModulo.find(params[:id])
    end

    def get_options
      @clientes_all = Cliente.all
      @modulos_all = Modulo.all
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_modulo_params
      params.require(:cliente_modulo).permit(:cliente_id, :modulo_id)
    end
end
