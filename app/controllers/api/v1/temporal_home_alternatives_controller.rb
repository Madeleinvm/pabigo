class Api::V1::TemporalHomeAlternativesController < ApplicationController
	include Response
	include ExceptionHandler

	before_action :set_temporal_home, only: [:show, :update, :destroy]
    skip_before_action :verify_authenticity_token

    def index
        @temporal_home_alternative = TemporalHome.where(approved: true)
        json_response(@temporal_home_alternative)
    end

    def all
    	@temporal_home_alternative = TemporalHome.all
    	json_response(@temporal_home_alternative)
    end

  	def create
    	@temporal_home_alternative = TemporalHome.create!(temporal_home_params)
    	render json: @temporal_home_alternative
    end

      # PUT /temporal_homes/:id
    def update
        @temporal_home_alternative.update(temporal_home_params)
        render json: @temporal_home_alternative
    end

    def by_user
        sql = "Select * from temporal_homes where temporal_homes.user_id = " + params[:id] + "AND temporal_homes.approved = true"
        @temporal_home_alternative = ActiveRecord::Base.connection.execute(sql)
        render json: @temporal_home_alternative
    end    

    def by_email
        @temporal_home_alternative = User.where(email: params[:email])
        render json: @temporal_home_alternative
    end

    def temporal_home_params
      params.permit(
        :id_card, 
        :dog, 
        :approved,
        :pet_characteristics,
        :home_type, 
        :existing_pets, 
        :kind_of_help,
        :protection_duration, 
        :reference_full_name, 
        :reference_phone, 
        :reference_id_card,
        :user_id
      )
    end

    def set_temporal_home
    	@temporal_home_alternative = TemporalHome.find(params[:id, :email])
  end
end