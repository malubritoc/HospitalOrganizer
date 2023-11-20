class CirurgiasController < ApplicationController
  before_action :set_cirurgia, only: %i[ show edit update destroy ]

  # GET /cirurgias or /cirurgias.json
  def index
    @cirurgias = Cirurgia.all
  end

  # GET /cirurgias/1 or /cirurgias/1.json
  def show
  end

  # GET /cirurgias/new
  def new
    @cirurgia = Cirurgia.new
  end

  # GET /cirurgias/1/edit
  def edit
  end

  # POST /cirurgias or /cirurgias.json
  def create
    @cirurgia = Cirurgia.new(cirurgia_params)

    respond_to do |format|
      if @cirurgia.save
        format.html { redirect_to cirurgia_url(@cirurgia), notice: "Cirurgia was successfully created." }
        format.json { render :show, status: :created, location: @cirurgia }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cirurgia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cirurgias/1 or /cirurgias/1.json
  def update
    respond_to do |format|
      if @cirurgia.update(cirurgia_params)
        format.html { redirect_to cirurgia_url(@cirurgia), notice: "Cirurgia was successfully updated." }
        format.json { render :show, status: :ok, location: @cirurgia }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cirurgia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cirurgias/1 or /cirurgias/1.json
  def destroy
    @cirurgia.destroy

    respond_to do |format|
      format.html { redirect_to cirurgias_url, notice: "Cirurgia was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cirurgia
      @cirurgia = Cirurgia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cirurgia_params
      params.require(:cirurgia).permit(:data, :hora_inicio, :hora_fim, :sala_cirurgia_id, :medico_id, :paciente_id, :urgencia)
    end
end
