module Api
  module V1
    class SlotsController < ApplicationController
      before_action :set_slot, only: %i[show]

      # GET /slots
      def index
        @slots = Slot.all

        render json: @slots
      end

      # GET /slots/1
      def show
        render json: @slot
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_slot
        @slot = Slot.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def slot_params
        params.require(:slot).permit(:location, :weekday, :start_time, :end_time)
      end
    end
  end
end
