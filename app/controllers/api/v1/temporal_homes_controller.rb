class Api::V1::TemporalHomesController < ApplicationController
    include Response
    include ExceptionHandler
    
	  before_action :set_temporal_home, only: [:show, :update, :destroy]
  	skip_before_action :verify_authenticity_token
    # GET /temporal_home
 def index 
    @temporal_homes = TemporalHome.all
    render json: @temporal_homes
  end

  def create
    @temporal_home = TemporalHome.new(temporal_home_params)

    if @temporal_home.save
      flash[:success] = "Su solicitud se ha enviado exitosamente"
      json_response(@temporal_home, :created)
    else
      flash.now[:danger] = "Por favor, verifique los problemas abajo"
    end
    
  end

  private

    def temporal_home_params
      params.permit(
        :id_card, :dog, :pet_characteristics,
        :home_type, :existing_pets, :kind_of_help,
        :protection_duration, :reference_full_name, 
        :reference_phone, :reference_id_card, :user_id
      )
    end


  def set_temporal_home
    @temporal_homes = TemporalHome.find(params[:id])
  end


end
