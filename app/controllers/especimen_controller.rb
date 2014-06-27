class EspecimenController < ApplicationController
  before_action :set_especiman, only: [:show, :edit, :update, :destroy]

  # GET /especimen
  # GET /especimen.json
  def index
    @especimen = Especiman.all
  end

  # GET /especimen/1
  # GET /especimen/1.json
  def show
  end

  # GET /especimen/new
  def new
    @especiman = Especiman.new
  end

  # GET /especimen/1/edit
  def edit
  end

  # POST /especimen
  # POST /especimen.json
  def create
    @especiman = Especiman.new(especiman_params)

    respond_to do |format|
      if @especiman.save
        format.html { redirect_to @especiman, notice: 'Especiman was successfully created.' }
        format.json { render :show, status: :created, location: @especiman }
      else
        format.html { render :new }
        format.json { render json: @especiman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especimen/1
  # PATCH/PUT /especimen/1.json
  def update
    respond_to do |format|
      if @especiman.update(especiman_params)
        format.html { redirect_to @especiman, notice: 'Especiman was successfully updated.' }
        format.json { render :show, status: :ok, location: @especiman }
      else
        format.html { render :edit }
        format.json { render json: @especiman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especimen/1
  # DELETE /especimen/1.json
  def destroy
    @especiman.destroy
    respond_to do |format|
      format.html { redirect_to especimen_url, notice: 'Especiman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especiman
      @especiman = Especiman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def especiman_params
      params.require(:especiman).permit(:extension, :photo, :dominio, :filo, :clase, :orden, :familia, :genero, :especie, :observaciones)
    end
end
