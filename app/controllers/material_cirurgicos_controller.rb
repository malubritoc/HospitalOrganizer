class MaterialCirurgicosController < ApplicationController
  before_action :set_material_cirurgico, only: %i[ show edit update destroy ]

  # GET /material_cirurgicos or /material_cirurgicos.json
  def index
    @material_cirurgicos = MaterialCirurgico.all
  end

  # GET /material_cirurgicos/1 or /material_cirurgicos/1.json
  def show
  end

  # GET /material_cirurgicos/new
  def new
    @material_cirurgico = MaterialCirurgico.new
  end

  # GET /material_cirurgicos/1/edit
  def edit
  end

  # POST /material_cirurgicos or /material_cirurgicos.json
  def create
    @material_cirurgico = MaterialCirurgico.new(material_cirurgico_params)

    respond_to do |format|
      if @material_cirurgico.save
        format.html { redirect_to material_cirurgico_url(@material_cirurgico), notice: "Material cirurgico was successfully created." }
        format.json { render :show, status: :created, location: @material_cirurgico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @material_cirurgico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_cirurgicos/1 or /material_cirurgicos/1.json
  def update
    respond_to do |format|
      if @material_cirurgico.update(material_cirurgico_params)
        format.html { redirect_to material_cirurgico_url(@material_cirurgico), notice: "Material cirurgico was successfully updated." }
        format.json { render :show, status: :ok, location: @material_cirurgico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @material_cirurgico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_cirurgicos/1 or /material_cirurgicos/1.json
  def destroy
    @material_cirurgico.destroy

    respond_to do |format|
      format.html { redirect_to material_cirurgicos_url, notice: "Material cirurgico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_cirurgico
      @material_cirurgico = MaterialCirurgico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def material_cirurgico_params
      params.require(:material_cirurgico).permit(:nome, :tipo)
    end
end
