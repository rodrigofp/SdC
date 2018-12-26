class ChamadosController < ApplicationController
  before_action :set_chamado, only: [:show, :edit, :update, :destroy]
  before_action :get_options, only: [:new, :edit, :update, :create]
  before_action :get_last_numerador, only: [:new, :create]


  # GET /chamados
  # GET /chamados.json
  def index
    @chamados = Chamado.paginate(:page => params[:page])
  end

  # GET /chamados/1
  # GET /chamados/1.json
  def show
    get_atendimentos
  end

  # GET /chamados/new
  def new
    @chamado = Chamado.new
    @chamado.atendimento_chamados.build
  end

  # GET /chamados/1/edit
  def edit
    @numerador = @chamado.numerador
    get_atendimentos
  end

  # POST /chamados
  # POST /chamados.json
  def create
    @chamado = Chamado.new(chamado_params)
    set_atendimento_chamado
    respond_to do |format|
      if @chamado.save
        format.html { redirect_to @chamado, notice: "Chamado #{t('messages.created')}" }
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
        format.html { redirect_to @chamado, notice: "Chamado #{t('messages.updated')}" }
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
      format.html { redirect_to chamados_url, notice: "Chamado #{t('messages.destroyed')}" }
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
      @bases_all = Base.all
      @cliente_modulos_all = ClienteModulo.all
      @tipo_chamados_all = TipoChamado.all
      @prioridades_all = Prioridade.all
    end
    
    def get_atendimentos
      @atendimentos = @chamado.atendimento_chamados.paginate(:page => params[:page], :per_page => 5)
    end

    def get_last_numerador
      last_chamado = Chamado.last
      if(last_chamado == nil)
        @numerador = 1
      else
        @numerador = last_chamado.numerador + 1
      end
    end

    def set_atendimento_chamado
      @chamado.atendimento_chamados[0].usuario_id = @chamado.usuario_id
      @chamado.atendimento_chamados[0].base_id = @chamado.base_id
      @chamado.atendimento_chamados[0].status_id = 1
      @chamado.atendimento_chamados[0].data = @chamado.data_abertura
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def chamado_params
      params.require(:chamado).permit(:usuario_id, :data_abertura, :data_fechamento, :cliente_modulo_id, :base_id, :tipo_chamado_id, :prioridade_id, :numerador,
      atendimento_chamados_attributes:[:descricao])
    end
end
