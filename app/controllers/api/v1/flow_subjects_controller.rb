module Api
  module V1
    class FlowSubjectsController < ApplicationController
      before_action :set_flow_subject, only: [:show]

      # GET /flow_subjects
      def index
        @flow_subjects = FlowSubject.all

        render json: @flow_subjects
      end

      # GET /flow_subjects/1
      def show
        render json: @flow_subject
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_flow_subject
        @flow_subject = FlowSubject.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def flow_subject_params
        params.require(:flow_subject).permit(:order)
      end
    end
  end
end
