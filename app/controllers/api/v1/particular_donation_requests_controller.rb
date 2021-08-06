class Api::V1::ParticularDonationRequestsController < ApplicationController
   
    include Response
    include ExceptionHandler

    before_action :set_new, only: [:show, :update, :destroy]
      skip_before_action :verify_authenticity_token
      
      # GET /request
    def index
        @request = Request.all
        json_response(@request)
    end

      # POST /request
    def create
       @request = Request.create!(request_params)
       json_response(@request, :created)
    end

    # PUT /request/:id
    def update
        @request.update(request_params)
        head :no_content
    end
    
      # DELETE /request/:id
    def destroy
        @request.destroy
        head :no_content
    end

    def request_params
        # whitelist params
        params.permit( :tipo, :descripcion, :direccion, :cuenta, :user_id, :name, :last_name, :banco, :bool, :email)
    end
     
    def set_request
        @request = Request.find(params[:id])
    end



end