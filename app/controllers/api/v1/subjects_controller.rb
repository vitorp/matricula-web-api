module Api
  module V1
    class SubjectsController < ApplicationController
      before_action :set_subject, only: [:show]

      # GET /subjects
      # GET /semesters/1/subjects
      def index
        @subjects = params[:semester_id].present? ? Semester.find(params[:semester_id]).subjects : Subject.all
        @subjects = params[:department_id].present? ? @subjects.where(department_id: params[:department_id]) : @subjects

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
