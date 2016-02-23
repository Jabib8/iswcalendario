class RecintosController < ApplicationController
  before_action :set_recinto, only: [:show, :edit, :update, :destroy]

  # GET /recintos
  # GET /recintos.json
  def index
    @recintos = Recinto.all
  end

  # GET /recintos/1
  # GET /recintos/1.json
  def show
  end

  # GET /recintos/new
  def new
    @recinto = Recinto.new
  end

  # GET /recintos/1/edit
  def edit
  end

  # POST /recintos
  # POST /recintos.json
  def create
    @recinto = Recinto.new(recinto_params)

    respond_to do |format|
      if @recinto.save
        format.html { redirect_to @recinto, notice: 'Recinto was successfully created.' }
        format.json { render :show, status: :created, location: @recinto }
      else
        format.html { render :new }
        format.json { render json: @recinto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recintos/1
  # PATCH/PUT /recintos/1.json
  def update
    respond_to do |format|
      if @recinto.update(recinto_params)
        format.html { redirect_to @recinto, notice: 'Recinto was successfully updated.' }
        format.json { render :show, status: :ok, location: @recinto }
      else
        format.html { render :edit }
        format.json { render json: @recinto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recintos/1
  # DELETE /recintos/1.json
  def destroy
    @recinto.destroy
    respond_to do |format|
      format.html { redirect_to recintos_url, notice: 'Recinto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recinto
      @recinto = Recinto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recinto_params
      params.require(:recinto).permit(:nombre, :direccion, :horario_id)
    end
end
