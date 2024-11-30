class PresentationEventsController < ApplicationController
  
  def create
    @presentation_event = PresentationEvent.new(presentation_event_params)

    if @presentation_event.save
      redirect_to instructor_path
    else
      redirect_to instructor_path
    end
  end

  def destroy
    @presentation_event.destroy
    redirect_to instructor_path
  end

  private

  def presentation_event_params
    params.permit(:title, :date, :description, :instructor_name)
  end
end
