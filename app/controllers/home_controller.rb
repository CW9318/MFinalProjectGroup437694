class HomeController < ApplicationController
  def index
  end

  def instructor
    @presentation_event = PresentationEvent.new
    @presentation_events = PresentationEvent.includes(:evaluations).all
  end

  def student
    @presentation_events = PresentationEvent.all
    @evaluation = Evaluation.new
  end
end
