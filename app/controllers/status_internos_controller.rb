class StatusInternosController < ApplicationController
  before_action :set_status_interno, only: [:show, :edit, :update, :destroy]

  # GET /status_internos
  # GET /status_internos.json
  def index
    @status_internos = StatusInterno.all
  end

  # GET /status_internos/1
  # GET /status_internos/1.json
  def show
  end

  # GET /status_internos/new
  def new
    @status_interno = StatusInterno.new
  end

  # GET /status_internos/1/edit
  def edit
  end

  # POST /status_internos
  # POST /status_internos.json
  def create
    @status_interno = StatusInterno.new(status_interno_params)

    respond_to do |format|
      if @status_interno.save
        format.html { redirect_to @status_interno, notice: 'Status interno was successfully created.' }
        format.json { render :show, status: :created, location: @status_interno }
      else
        format.html { render :new }
        format.json { render json: @status_interno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_internos/1
  # PATCH/PUT /status_internos/1.json
  def update
    respond_to do |format|
      if @status_interno.update(status_interno_params)
        format.html { redirect_to @status_interno, notice: 'Status interno was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_interno }
      else
        format.html { render :edit }
        format.json { render json: @status_interno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_internos/1
  # DELETE /status_internos/1.json
  def destroy
    @status_interno.destroy
    respond_to do |format|
      format.html { redirect_to status_internos_url, notice: 'Status interno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_interno
      @status_interno = StatusInterno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_interno_params
      params.require(:status_interno).permit(:nome)
    end
end
