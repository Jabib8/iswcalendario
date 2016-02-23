class AulaLabsController < ApplicationController
  before_action :set_aula_lab, only: [:show, :edit, :update, :destroy]

  # GET /aula_labs
  # GET /aula_labs.json
  def index
    @aula_labs = AulaLab.all
  end

  # GET /aula_labs/1
  # GET /aula_labs/1.json
  def show
  end

  # GET /aula_labs/new
  def new
    @aula_lab = AulaLab.new
  end

  # GET /aula_labs/1/edit
  def edit
  end

  # POST /aula_labs
  # POST /aula_labs.json
  def create
    @aula_lab = AulaLab.new(aula_lab_params)

    respond_to do |format|
      if @aula_lab.save
        format.html { redirect_to @aula_lab, notice: 'Aula lab was successfully created.' }
        format.json { render :show, status: :created, location: @aula_lab }
      else
        format.html { render :new }
        format.json { render json: @aula_lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aula_labs/1
  # PATCH/PUT /aula_labs/1.json
  def update
    respond_to do |format|
      if @aula_lab.update(aula_lab_params)
        format.html { redirect_to @aula_lab, notice: 'Aula lab was successfully updated.' }
        format.json { render :show, status: :ok, location: @aula_lab }
      else
        format.html { render :edit }
        format.json { render json: @aula_lab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aula_labs/1
  # DELETE /aula_labs/1.json
  def destroy
    @aula_lab.destroy
    respond_to do |format|
      format.html { redirect_to aula_labs_url, notice: 'Aula lab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aula_lab
      @aula_lab = AulaLab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aula_lab_params
      params.require(:aula_lab).permit(:recintos, :descripcion, :observacion, :personas)
    end
end
