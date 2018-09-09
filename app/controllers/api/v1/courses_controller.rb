module Api
  module V1
    class CoursesController < ApplicationController
      before_action :set_course, only: [:show]

      # GET departments/1/courses
      def index
        @courses = Course.where(department_id: params[:department_id])

        render json: @courses
      end

      # GET /courses/1
      def show
        render json: @course
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_course
        @course = Course.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def course_params
        params.require(:course).permit(:name, :code, :modality, :shift, :degree)
      end
    end
  end
end
