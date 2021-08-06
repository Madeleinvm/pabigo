class Api::V1::PetsController < PetsController#ApplicationController
  include Response
  include ExceptionHandler


  before_action :set_pets, only: [:show]
  skip_before_action :verify_authenticity_token

  #GET /pets
  def index
    @pet = Pet.all
    json_response(@pet)
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
    params.require(:pet).permit(:name, :adoptions_id, :races_id, :weight, :description, :special_needs, :dewormed, :neutered, :aprox_age, :species)
  end
end
