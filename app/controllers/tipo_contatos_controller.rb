class TipoContatosController < ApplicationController
  before_action :set_tipo_contato, only: [:show, :edit, :update, :destroy]

  # GET /tipo_contatos
  # GET /tipo_contatos.json
  def index
    @tipo_contatos = TipoContato.all
  end

  # GET /tipo_contatos/1
  # GET /tipo_contatos/1.json
  def show
  end

  # GET /tipo_contatos/new
  def new
    @tipo_contato = TipoContato.new
  end

  # GET /tipo_contatos/1/edit
  def edit
  end

  # POST /tipo_contatos
  # POST /tipo_contatos.json
  def create
    @tipo_contato = TipoContato.new(tipo_contato_params)

    respond_to do |format|
      if @tipo_contato.save
        format.html { redirect_to @tipo_contato, notice: 'Tipo contato was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_contato }
      else
        format.html { render :new }
        format.json { render json: @tipo_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_contatos/1
  # PATCH/PUT /tipo_contatos/1.json
  def update
    respond_to do |format|
      if @tipo_contato.update(tipo_contato_params)
        format.html { redirect_to @tipo_contato, notice: 'Tipo contato was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_contato }
      else
        format.html { render :edit }
        format.json { render json: @tipo_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_contatos/1
  # DELETE /tipo_contatos/1.json
  def destroy
    @tipo_contato.destroy
    respond_to do |format|
      format.html { redirect_to tipo_contatos_url, notice: 'Tipo contato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_contato
      @tipo_contato = TipoContato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_contato_params
      params.require(:tipo_contato).permit(:tipo)
    end
end
