class AnexoChamadosController < ApplicationController
  before_action :set_anexo_chamado, only: [:show, :edit, :update, :destroy]

  # GET /anexo_chamados
  # GET /anexo_chamados.json
  def index
    @anexo_chamados = AnexoChamado.all
  end

  # GET /anexo_chamados/1
  # GET /anexo_chamados/1.json
  def show
  end

  # GET /anexo_chamados/new
  def new
    @anexo_chamado = AnexoChamado.new
  end

  # GET /anexo_chamados/1/edit
  def edit
  end

  # POST /anexo_chamados
  # POST /anexo_chamados.json
  def create
    @anexo_chamado = AnexoChamado.new(anexo_chamado_params)

    respond_to do |format|
      if @anexo_chamado.save
        format.html { redirect_to @anexo_chamado, notice: 'Anexo chamado was successfully created.' }
        format.json { render :show, status: :created, location: @anexo_chamado }
      else
        format.html { render :new }
        format.json { render json: @anexo_chamado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anexo_chamados/1
  # PATCH/PUT /anexo_chamados/1.json
  def update
    respond_to do |format|
      if @anexo_chamado.update(anexo_chamado_params)
        format.html { redirect_to @anexo_chamado, notice: 'Anexo chamado was successfully updated.' }
        format.json { render :show, status: :ok, location: @anexo_chamado }
      else
        format.html { render :edit }
        format.json { render json: @anexo_chamado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anexo_chamados/1
  # DELETE /anexo_chamados/1.json
  def destroy
    @anexo_chamado.destroy
    respond_to do |format|
      format.html { redirect_to anexo_chamados_url, notice: 'Anexo chamado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anexo_chamado
      @anexo_chamado = AnexoChamado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anexo_chamado_params
      params.require(:anexo_chamado).permit(:nome_arquivo, :atendimento_chamado_status_id)
    end
end
