class TipoChamadosController < ApplicationController
  before_action :set_tipo_chamado, only: [:show, :edit, :update, :destroy]

  # GET /tipo_chamados
  # GET /tipo_chamados.json
  def index
    @tipo_chamados = TipoChamado.all
  end

  # GET /tipo_chamados/1
  # GET /tipo_chamados/1.json
  def show
  end

  # GET /tipo_chamados/new
  def new
    @tipo_chamado = TipoChamado.new
  end

  # GET /tipo_chamados/1/edit
  def edit
  end

  # POST /tipo_chamados
  # POST /tipo_chamados.json
  def create
    @tipo_chamado = TipoChamado.new(tipo_chamado_params)

    respond_to do |format|
      if @tipo_chamado.save
        format.html { redirect_to @tipo_chamado, notice: 'Tipo chamado was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_chamado }
      else
        format.html { render :new }
        format.json { render json: @tipo_chamado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_chamados/1
  # PATCH/PUT /tipo_chamados/1.json
  def update
    respond_to do |format|
      if @tipo_chamado.update(tipo_chamado_params)
        format.html { redirect_to @tipo_chamado, notice: 'Tipo chamado was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_chamado }
      else
        format.html { render :edit }
        format.json { render json: @tipo_chamado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_chamados/1
  # DELETE /tipo_chamados/1.json
  def destroy
    @tipo_chamado.destroy
    respond_to do |format|
      format.html { redirect_to tipo_chamados_url, notice: 'Tipo chamado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_chamado
      @tipo_chamado = TipoChamado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_chamado_params
      params.require(:tipo_chamado).permit(:tipo)
    end
end
