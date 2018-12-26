class AtendimentoChamadosController < ApplicationController
  before_action :set_atendimento_chamado, only: [:show, :edit, :update, :destroy]
  before_action :get_options, only: [:new, :edit, :update, :create]

  # GET /atendimento_chamados
  # GET /atendimento_chamados.json
  def index
    @atendimento_chamados = AtendimentoChamado.all
  end

  # GET /atendimento_chamados/1
  # GET /atendimento_chamados/1.json
  def show
  end

  # GET /atendimento_chamados/new
  def new
    @atendimento_chamado = AtendimentoChamado.new
    @atendimento_chamado.chamado_id = params[:chamado]
  end

  # GET /atendimento_chamados/1/edit
  def edit
  end

  # POST /atendimento_chamados
  # POST /atendimento_chamados.json
  def create
    @atendimento_chamado = AtendimentoChamado.new(atendimento_chamado_params)

    respond_to do |format|
      if @atendimento_chamado.save
        format.html { redirect_to @atendimento_chamado, notice: 'Atendimento chamado was successfully created.' }
        format.json { render :show, status: :created, location: @atendimento_chamado }
      else
        format.html { render :new }
        format.json { render json: @atendimento_chamado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atendimento_chamados/1
  # PATCH/PUT /atendimento_chamados/1.json
  def update
    respond_to do |format|
      if @atendimento_chamado.update(atendimento_chamado_params)
        format.html { redirect_to @atendimento_chamado, notice: 'Atendimento chamado was successfully updated.' }
        format.json { render :show, status: :ok, location: @atendimento_chamado }
      else
        format.html { render :edit }
        format.json { render json: @atendimento_chamado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atendimento_chamados/1
  # DELETE /atendimento_chamados/1.json
  def destroy
    @atendimento_chamado.destroy
    respond_to do |format|
      format.html { redirect_to atendimento_chamados_url, notice: 'Atendimento chamado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atendimento_chamado
      @atendimento_chamado = AtendimentoChamado.find(params[:id])
    end

    def get_options
      @usuarios_all = Usuario.all
      @bases_all = Base.all
      @statuses_all = Status.all
      @chamado_id = params[:chamado]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atendimento_chamado_params
      params.require(:atendimento_chamado).permit(:chamado_id, :usuario_id, :base_id, :data, :status_id, :descricao)
    end
end
