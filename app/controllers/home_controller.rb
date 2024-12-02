class HomeController < ApplicationController
  # Renders hompage with just index.html
  def index
  end

  def instructor
    # Creates new presentation and retrieves all presentations and evals
    @presentation_event = PresentationEvent.new
    @presentation_events = PresentationEvent.includes(:evaluations).all
  end

  def student
    # Retrieves all presentations and creates a new eval
    @presentation_events = PresentationEvent.all
    @evaluation = Evaluation.new
  end
end
