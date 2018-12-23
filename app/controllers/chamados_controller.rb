class ChamadosController < ApplicationController
  before_action :set_chamado, only: [:show, :edit, :update, :destroy]

  # GET /chamados
  # GET /chamados.json
  def index
    @chamados = Chamado.all
  end

  # GET /chamados/1
  # GET /chamados/1.json
  def show
  end

  # GET /chamados/new
  def new
    @chamado = Chamado.new
    
    get_options
  end

  # GET /chamados/1/edit
  def edit
    get_options
  end

  # POST /chamados
  # POST /chamados.json
  def create
    @chamado = Chamado.new(chamado_params)

    respond_to do |format|
      if @chamado.save
        format.html { redirect_to @chamado, notice: 'Chamado was successfully created.' }
        format.json { render :show, status: :created, location: @chamado }
      else
        format.html { render :new }
        format.json { render json: @chamado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chamados/1
  # PATCH/PUT /chamados/1.json
  def update
    respond_to do |format|
      if @chamado.update(chamado_params)
        format.html { redirect_to @chamado, notice: 'Chamado was successfully updated.' }
        format.json { render :show, status: :ok, location: @chamado }
      else
        format.html { render :edit }
        format.json { render json: @chamado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chamados/1
  # DELETE /chamados/1.json
  def destroy
    @chamado.destroy
    respond_to do |format|
      format.html { redirect_to chamados_url, notice: 'Chamado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chamado
      @chamado = Chamado.find(params[:id])
    end

    def get_options
      @usuarios_all = Usuario.all
      @modulos_all = Modulo.all
      @tipo_chamados_all = TipoChamado.all
      @prioridades_all = Prioridade.all
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def chamado_params
      params.require(:chamado).permit(:usuario_id, :data_abertura, :data_fechamento, :modulo_id, :tipo_chamado_id, :prioridade_id)
    end
end
