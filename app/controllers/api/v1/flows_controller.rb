module Api
  module V1
    class FlowsController < ApplicationController
      before_action :set_flow_subject, only: [:show]

      # GET curriculums/1/flows
      def index
        @flows = Flow.all

        render json: @flows
      end

      # GET /flows/1
      def show
        render json: @flow
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_flow_subject
        @flow = Flow.find(params[:id])
      end
    end
  end
end
