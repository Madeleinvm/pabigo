class Api::V1::RacesCatsController < ApplicationController
	include Response
	include ExceptionHandler


	before_action :set_race, only: [:show, :update, :destroy]
  	skip_before_action :verify_authenticity_token

  # GET /races
  def index
	@races_cats = Race.where(species: "Gato")
    render json: @races_cats.to_json(include: :image)
  end

  # POST /races
  def create
    @races_cats = Race.create!(race_params)
    json_response(@races_cats, :created)
  end

  # GET /race_dogs/:id
  def show
    render :json => @races_cats
  end

    # DELETE /institutions/:id
  def destroy
    @institution.destroy
    head :no_content
  end

  private

  def race_params
    # whitelist params
    params.permit(:name, :type, :video_id, :height, :weight, :fur, :physical_details, :character,
			:care, :health, :story,
      :color, :affectivity, :docility, :bustling, :playful, :grooming, :hair_loosner, :kids, :species,
		:image_attributes => [:name, :picture])

  end

  def set_race
    @races_cats = Race.find(params[:id])
  end
end
