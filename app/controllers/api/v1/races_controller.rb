class Api::V1::RacesController < ApplicationController
	include Response
	include ExceptionHandler


	before_action :set_race, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /races
  def index
   @races = Race.all
	 @races_dog = Race.find(:all, :conditions => {:species => "1"})
    render json: @races.to_json(include: :image)
  end

  # POST /races
  def create
    @race = Race.create!(race_params)
    json_response(@race, :created)
  end

  # GET /races/:id
  def show
    render :json => @race
  end

    # DELETE /institutions/:id
  def destroy
    @institution.destroy
    head :no_content
  end

  private

  def race_params
    # whitelist params
    params.require(:race).permit(:name, :height, :weight, :fur, :character, :care, :health, :story,
      :color, :affectivity, :docility, :bustling, :playful, :grooming, :hair_loosner, :kids, :species,
      :image_attributes => [:name, :picture])
  end

  def set_race
    @race = Race.find(params[:id])
  end
end
