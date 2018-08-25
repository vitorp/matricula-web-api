module Api
  module V1
    class FlowPeriodsController < ApplicationController
      before_action :set_flow_period, only: [:show]

      # GET /flow_periods
      def index
        @flow_periods = FlowPeriod.all

        render json: @flow_periods
      end

      # GET /flow_periods/1
      def show
        render json: @flow_period
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_flow_period
        @flow_period = FlowPeriod.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def flow_period_params
        params.require(:flow_period).permit(:order)
      end
    end
  end
end
