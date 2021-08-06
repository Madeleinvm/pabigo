class RacesController < ApplicationController
  before_action :set_race, only: [:show]

  # GET /races
  # GET /races.json
  def index
    @races = if (params[:term] && params[:term2])
      Race.paginate(page: params[:page], per_page: 6)
      .where(Race.arel_table[:name]
      .lower
      .matches("%#{params[:term].downcase}%"))
      .where(Race.arel_table[:species]
      .lower
      .matches("%#{params[:term2].downcase}%"))
    elsif params[:term]
      Race.paginate(page: params[:page], per_page: 6)
      .where(Race.arel_table[:name]
      .lower
      .matches("%#{params[:term].downcase}%"))
    elsif params[:term2]
      Race.paginate(page: params[:page], per_page: 6)
      .where(Race.arel_table[:species]
      .lower
      .matches("%#{params[:term2].downcase}%"))
    else
      Race.paginate(page: params[:page], per_page: 6)
    end
  end

  # GET /races/1
  # GET /races/1.json
  def show
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_params
      params.require(:race).permit(:name)
    end
end
