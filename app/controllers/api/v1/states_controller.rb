class Api::V1::StatesController < ApplicationController
	include Response
	include ExceptionHandler


	before_action :set_state, only: [:show, :update, :destroy]
  	skip_before_action :verify_authenticity_token

  	  # POST /state
  def create
    @state = State.create!(state_params)
    json_response(@state, :created)
  end

    def state_params
    # whitelist params
    params.permit(:name, :city_id)
  end

  def set_state
    @state = State.find(params[:id])
  end
end
