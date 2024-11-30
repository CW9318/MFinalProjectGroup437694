class EvaluationsController < ApplicationController
    def create
        @presentation_event = PresentationEvent.find(params[:presentation_event_id])
        @evaluation = @presentation_event.evaluations.new(evaluation_params)
    
        if @evaluation.save
          flash[:notice] = "Success"
          redirect_to student_path
        else
          flash[:alert] = "Error"
          redirect_to student_path
        end
      end
    
      private
    
      def evaluation_params
        params.permit(:score, :comments, :student_name)
      end
end
