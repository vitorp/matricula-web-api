module Api
  module V1
    class SemestersController < ApplicationController
      before_action :set_semester, only: %i[show]

      # GET /semesters
      def index
        @semesters = Semester.all

        render json: @semesters
      end

      # GET /semesters/1
      def show
        render json: @semester
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_semester
        @semester = Semester.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def semester_params
        params.require(:semester).permit(:start, :end, :period, :year)
      end
    end
  end
end
