class PresentationEventsController < ApplicationController
  # Handles creating a new presentation
  def create
    # New instance var with permitted params
    @presentation_event = PresentationEvent.new(presentation_event_params)

    if @presentation_event.save
      # Redirects to insturctor page(refresh)
      redirect_to instructor_path
    else
      redirect_to instructor_path
    end
  end

  private
  # Private method to only allow certain things in params
  def presentation_event_params
    params.permit(:title, :date, :description, :instructor_name)
  end

  def destroy
    @presentation_event = PresentationEvent.find(params[:id])
    if @presentation_event.destroy
      flash[:notice] = "Presentation successfully removed."
    else
      flash[:alert] = "Failed to remove the presentation."
    end
    
    redirect_to instructor_path # Adjust this to the appropriate route for the instructor page
  end

end
