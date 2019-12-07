module CreatedtranslationsHelper
  # Returns the current logged-in user (if any).
  def current_creator
    if session[:creator_id]
      @current_creator ||= Creator.find_by(id: session[:creator_id])
    end
  end

  # Confirms the correct user.
  def correct_creator
    @creator = Creator.find(params[:id])
    redirect_to(root_url) unless @creator == current_creator
  end

  #defines the creation being show in the screen
  def current_createdtranstion
    @createdtranslation = Createdtranslation.find(params[:createdtranslation_id])
  end
end
