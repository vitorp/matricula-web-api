module Api
  module V1
    class OffersController < ApplicationController
      before_action :set_offer, only: [:show]

      # GET /offers
      def index
        @offers = Offer.all

        render json: @offers
      end

      # GET /offers/1
      def show
        render json: @offer
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_offer
        @offer = Offer.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def offer_params
        params.require(:offer).permit(:class, :shift, :enrolled_count, :vacancies_count, :credits_classes,
                                      :credits_theory, :credits_extension, :credits_pratical, :obs1, :obs2, :obs3)
      end
    end
  end
end
