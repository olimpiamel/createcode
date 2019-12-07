class CreatedtranslationsController < ApplicationController

  before_action :authenticate_creator!

  #this line defines the actions the users can perform in the creations objects. In this case, the only allowed actions are view the creation and destroy it. Only the creator associated with them can destroy them.
  before_action :set_createdtranslation, only: [:show, :destroy]
  before_action :correct_creator, only: [:show, :destroy]
  before_action :current_creator, only: [:show, :new, :destroy]

  # GET /createdtranslations
  # GET /createdtranslations.json
  def index
    @createdtranslation = Createdtranslation.all
  end

  # GET /createdtranslations/1
  # GET /createdtranslations/1.json
  def show
    @createdtranslation = Createdtranslation.find(params[:id])
  end

  # GET /createdtranslation/new
  def new
    @createdtranslation = Createdtranslation.new
    @createdtranslation.creator_id_id = current_creator.id
  end

  # creations should not be modified as this will generate a new request to the API, instead a new creation should be generated
  # GET /createdtranslations/1/edit
  #def edit
  #end

  # POST /createdtranslations
  # POST /createdtranslations.json
  def create
    @createdtranslation = Createdtranslation.new(createdtranslation_params)

    respond_to do |format|
      if @createdtranslation.save
        format.html { redirect_to @createdtranslation, notice: 'Creation was successfully created.' }
        format.json { render :show, status: :created, location: @createdtranslation }
      else
        format.html { render :new }
        format.json { render json: @createdtranslation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /createdtranslations/1
  # PATCH/PUT /createdtranslations/1.json
  #def update
  #  respond_to do |format|
  #    if @createdtranslation.update(createdtranslation_params)
  #      format.html { redirect_to @createdtranslation, notice: 'Creation was successfully updated.' }
  #      format.json { render :show, status: :ok, location: @createdtranslation }
  #    else
  #      format.html { render :edit }
  #      format.json { render json: @createdtranslation.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /createdtranslations/1
  # DELETE /createdtranslations/1.json
  def destroy
    @createdtranslations.destroy
    respond_to do |format|
      format.html { redirect_to createdtranslations_url, notice: 'Creation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_createdtranslation
      @createdtranslation = Createdtranslation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def createdtranslation_params
      params.require(:createdtranslation).permit(:totranslate, :translated, :language1, :language2, :title, :creator_id_id)
    end
end
