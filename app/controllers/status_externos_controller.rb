class StatusExternosController < ApplicationController
  before_action :set_status_externo, only: [:show, :edit, :update, :destroy]

  # GET /status_externos
  # GET /status_externos.json
  def index
    @status_externos = StatusExterno.all
  end

  # GET /status_externos/1
  # GET /status_externos/1.json
  def show
  end

  # GET /status_externos/new
  def new
    @status_externo = StatusExterno.new
  end

  # GET /status_externos/1/edit
  def edit
  end

  # POST /status_externos
  # POST /status_externos.json
  def create
    @status_externo = StatusExterno.new(status_externo_params)

    respond_to do |format|
      if @status_externo.save
        format.html { redirect_to @status_externo, notice: 'Status externo was successfully created.' }
        format.json { render :show, status: :created, location: @status_externo }
      else
        format.html { render :new }
        format.json { render json: @status_externo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_externos/1
  # PATCH/PUT /status_externos/1.json
  def update
    respond_to do |format|
      if @status_externo.update(status_externo_params)
        format.html { redirect_to @status_externo, notice: 'Status externo was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_externo }
      else
        format.html { render :edit }
        format.json { render json: @status_externo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_externos/1
  # DELETE /status_externos/1.json
  def destroy
    @status_externo.destroy
    respond_to do |format|
      format.html { redirect_to status_externos_url, notice: 'Status externo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_externo
      @status_externo = StatusExterno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_externo_params
      params.require(:status_externo).permit(:nome)
    end
end
