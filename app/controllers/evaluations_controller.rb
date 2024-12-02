class EvaluationsController < ApplicationController
    # Handling creating a new presentation
    def create
        # Initializes instance variables 
        @presentation_event = PresentationEvent.find(params[:presentation_event_id])
        # Creates new evaluation with the params from the private method
        @evaluation = @presentation_event.evaluations.new(evaluation_params)
    
        if @evaluation.save
          flash[:notice] = "Success"
          # Sends redirect to student view page(refreshes)
          redirect_to student_path
        else
          flash[:alert] = "Error"
          redirect_to student_path
        end
      end
      # Private method for controller only
      private
      # Allows params to contain specific things
      def evaluation_params
        params.permit(:score, :comments, :student_name)
      end
end
