class HappyPetsController < ApplicationController
  before_action :set_pet, only: [:show]
  skip_before_action :verify_authenticity_token, :only => [:index, :show]

  def new
    authorize! :view_news, current_user
    @pet = Pet.new
    @pet.build_image

  end
  

  def index
    @pets = Pet.paginate(page: params[:page], per_page: 8).order(id: :desc) 
  end

  def show
  end

  private

    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:name, :adoptions_id, :races_id, :weight, :description, :special_needs, :dewormed, :neutered, :aprox_age, :species,:adoptions_id , images_attributes: [:id, :picture, :name] )
    end
  
end



  