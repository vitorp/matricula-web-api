class CampusesController < ApplicationController
  before_action :set_campus, only: [:show]

  # GET /campuses
  def index
    @campuses = Campus.all

    render json: @campuses
  end

  # GET /campuses/1
  def show
    render json: @campus
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_campus
    @campus = Campus.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def campus_params
    params.require(:campus).permit(:name)
  end
end
