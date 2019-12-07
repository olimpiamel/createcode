class CroationsController < ApplicationController

  before_action :authenticate_creator!

  before_action :set_croation, only: [:show, :edit, :update, :destroy]

  # GET /croations
  # GET /croations.json
  def index
    @croations = Croation.all
  end

  # GET /croations/1
  # GET /croations/1.json
  def show
  end

  # GET /croations/new
  def new
    @croation = Croation.new
  end

  # creations should not be editable, a new one should be created always
  # GET /croations/1/edit
  #def edit
  #end

  # POST /croations
  # POST /croations.json
  def create
    @croation = Croation.new(croation_params)

    respond_to do |format|
      if @croation.save
        format.html { redirect_to @croation, notice: 'Croation was successfully created.' }
        format.json { render :show, status: :created, location: @croation }
      else
        format.html { render :new }
        format.json { render json: @croation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /croations/1
  # PATCH/PUT /croations/1.json
  def update
    respond_to do |format|
      if @croation.update(croation_params)
        format.html { redirect_to @croation, notice: 'Croation was successfully updated.' }
        format.json { render :show, status: :ok, location: @croation }
      else
        format.html { render :edit }
        format.json { render json: @croation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /croations/1
  # DELETE /croations/1.json
  def destroy
    @croation.destroy
    respond_to do |format|
      format.html { redirect_to croations_url, notice: 'Croation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_croation
      @croation = Croation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def croation_params
      params.require(:croation).permit(:title, :lang1, :totrans, :lang2, :translated)
    end
end
