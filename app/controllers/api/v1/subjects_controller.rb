module Api
  module V1
    class SubjectsController < ApplicationController
      before_action :set_subject, only: [:show]

      # GET /subjects
      def index
        @subjects = Subject.all

        render json: @subjects
      end

      # GET /subjects/1
      def show
        render json: @subject
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_subject
        @subject = Subject.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def subject_params
        params.require(:subject).permit(:name, :code, :level)
      end
    end
  end
end
