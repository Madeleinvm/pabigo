class Api::V1::PetsNewController < ApplicationController
  include Response
  include ExceptionHandler
# PetsController#

  before_action :set_pets, only: [:show]
  skip_before_action :verify_authenticity_token

  #GET /pets
  def index
    @pet = Pet.all
    json_response(@pet)
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      render json: { sucess: true}
    else
      render json: {sucess: false}
    end
  end

  def show
    render :json => @pet
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_pet
    @pet = Pet.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pet_params
    params.require(:pets_new).permit(:name, :weight, :aprox_age,
      :species, :races_id, :special_needs, :dewormed, :neutered, :description)
  end
end
