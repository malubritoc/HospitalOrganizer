class SalaCirurgiasController < ApplicationController
  before_action :set_sala_cirurgia, only: %i[ show edit update destroy ]

  # GET /sala_cirurgias or /sala_cirurgias.json
  def index
    @sala_cirurgias = SalaCirurgia.all
  end

  # GET /sala_cirurgias/1 or /sala_cirurgias/1.json
  def show
  end

  # GET /sala_cirurgias/new
  def new
    @sala_cirurgia = SalaCirurgia.new
  end

  # GET /sala_cirurgias/1/edit
  def edit
  end

  # POST /sala_cirurgias or /sala_cirurgias.json
  def create
    @sala_cirurgia = SalaCirurgia.new(sala_cirurgia_params)

    respond_to do |format|
      if @sala_cirurgia.save
        format.html { redirect_to sala_cirurgia_url(@sala_cirurgia), notice: "Sala cirurgia was successfully created." }
        format.json { render :show, status: :created, location: @sala_cirurgia }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sala_cirurgia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sala_cirurgias/1 or /sala_cirurgias/1.json
  def update
    respond_to do |format|
      if @sala_cirurgia.update(sala_cirurgia_params)
        format.html { redirect_to sala_cirurgia_url(@sala_cirurgia), notice: "Sala cirurgia was successfully updated." }
        format.json { render :show, status: :ok, location: @sala_cirurgia }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sala_cirurgia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sala_cirurgias/1 or /sala_cirurgias/1.json
  def destroy
    @sala_cirurgia.destroy

    respond_to do |format|
      format.html { redirect_to sala_cirurgias_url, notice: "Sala cirurgia was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sala_cirurgia
      @sala_cirurgia = SalaCirurgia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sala_cirurgia_params
      params.require(:sala_cirurgia).permit(:nome, :especialidade)
    end
end
