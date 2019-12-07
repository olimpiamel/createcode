module CroationsHelper
  #defines the creation being show in the screen
  def current_croation
    @croation = Croation.find(params[:croation_id])
  end
end
