class AtendimentoChamadoStatusesController < ApplicationController
  before_action :set_atendimento_chamado_status, only: [:show, :edit, :update, :destroy]

  # GET /atendimento_chamado_statuses
  # GET /atendimento_chamado_statuses.json
  def index
    @atendimento_chamado_statuses = AtendimentoChamadoStatus.all
  end

  # GET /atendimento_chamado_statuses/1
  # GET /atendimento_chamado_statuses/1.json
  def show
  end

  # GET /atendimento_chamado_statuses/new
  def new
    @atendimento_chamado_status = AtendimentoChamadoStatus.new
  end

  # GET /atendimento_chamado_statuses/1/edit
  def edit
  end

  # POST /atendimento_chamado_statuses
  # POST /atendimento_chamado_statuses.json
  def create
    @atendimento_chamado_status = AtendimentoChamadoStatus.new(atendimento_chamado_status_params)

    respond_to do |format|
      if @atendimento_chamado_status.save
        format.html { redirect_to @atendimento_chamado_status, notice: 'Atendimento chamado status was successfully created.' }
        format.json { render :show, status: :created, location: @atendimento_chamado_status }
      else
        format.html { render :new }
        format.json { render json: @atendimento_chamado_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atendimento_chamado_statuses/1
  # PATCH/PUT /atendimento_chamado_statuses/1.json
  def update
    respond_to do |format|
      if @atendimento_chamado_status.update(atendimento_chamado_status_params)
        format.html { redirect_to @atendimento_chamado_status, notice: 'Atendimento chamado status was successfully updated.' }
        format.json { render :show, status: :ok, location: @atendimento_chamado_status }
      else
        format.html { render :edit }
        format.json { render json: @atendimento_chamado_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atendimento_chamado_statuses/1
  # DELETE /atendimento_chamado_statuses/1.json
  def destroy
    @atendimento_chamado_status.destroy
    respond_to do |format|
      format.html { redirect_to atendimento_chamado_statuses_url, notice: 'Atendimento chamado status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atendimento_chamado_status
      @atendimento_chamado_status = AtendimentoChamadoStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atendimento_chamado_status_params
      params.require(:atendimento_chamado_status).permit(:usuario_id, :status_interno_id, :status_externo_id, :data, :descricao)
    end
end
