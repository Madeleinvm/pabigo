class Api::V1::CitiesController < ApplicationController
	include Response
	include ExceptionHandler


	before_action :set_city, only: [:show, :update, :destroy]
  	skip_before_action :verify_authenticity_token

  	  # POST /city
  def create
    @city = City.create!(city_params)
    json_response(@city, :created)
  end

    def city_params
    # whitelist params
    params.permit(:name, :state_id, :institution_id)
  end

   def set_city
    @city = City.find(params[:id])
  end
end
