class Api::V1::RacesDogsController < ApplicationController
	include Response
	include ExceptionHandler


	before_action :set_race, only: [:show, :update, :destroy]
  	skip_before_action :verify_authenticity_token

  # GET /races
  def index
  # @races_dogs = Race.find(:all, :conditions => {params[:species] => 'Perro'})
	@races_dogs = Race.where(species: "Perro")
  # @races_dogs = Race.all
    render json: @races_dogs.to_json(include: :image)
  end

  # POST /races
  def create
    @races_dogs = Race.create!(race_params)
    json_response(@races_dogs, :created)
  end

  # GET /race_dogs/:id
  def show
    render :json => @races_dogs
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
    @races_dogs = Race.find(params[:id])
  end
end
