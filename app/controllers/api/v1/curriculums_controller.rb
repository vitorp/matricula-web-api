module Api
  module V1
    class CurriculumsController < ApplicationController
      before_action :set_curriculum, only: %i[show]

      # GET courses/:course_id/curriculums
      def index
        @curriculums = Curriculum.where(course_id: params[:course_id])

        render json: @curriculums
      end

      # GET /curriculums/1
      def show
        render json: @curriculum
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_curriculum
        @curriculum = Curriculum.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def curriculum_params
        params.require(:curriculum).permit(:credits_needed, :min_credits_per_period, :max_credits_per_period,
                                           :validity, :min_periods, :max_periods, :max_credits_free_module)
      end
    end
  end
end
