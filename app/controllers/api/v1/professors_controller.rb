module Api
  module V1
    class ProfessorsController < ApplicationController
      before_action :set_professor, only: [:show]

      # GET /professors
      def index
        @professors = Professor.all

        render json: @professors
      end

      # GET /professors/1
      def show
        render json: @professor
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_professor
        @professor = Professor.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def professor_params
        params.require(:professor).permit(:name)
      end
    end
  end
end
